-- Script Internals
local player = game:GetService("Players").LocalPlayer
local plrChar = player.Character


-- this isnt really anything special, it just logs any clickdetectors, touchinterests, and proximityprompts
local devTools = false
local emoteList = {}
local emoteListNames = {}

local Room = nil

function getRoom()
    Room = nil
    for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
        if v:IsA('Model') then
            if v:FindFirstChild('RoomScript') then
                Room = v
            end
        end
    end

    while Room == nil do
        for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
            if v:IsA('Model') then
                if v:FindFirstChild('RoomScript') then
                    Room = v
                end
            end
        end
        wait(.1)
    end
end

local gc = filtergc("table", {
    Keys = {"Aerostep"}
})

for i,v in pairs(gc[1]) do
    emoteList[i] = v
    table.insert(emoteListNames, i)
end

table.sort(emoteListNames, function (a,b) 
    return a < b
end)


-- Rayfield

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
    Name = "Regretevator Menu // by membuffer", 
    LoadingTitle = "Regretevator Menu", 
    LoadingSubtitle="nihon.lol",
    KeySystem = false,
    KeySettings = {
        Key = {}
    },
    DisableRayfieldPrompts = true
})

local ToolsTab = Window:CreateTab("Game")
local RoomSpecific = Window:CreateTab("Room Specific")
local PlayerTab = Window:CreateTab("Player")
local CreditsTab = Window:CreateTab("Credits")

getRoom()

local RoomInformation = ToolsTab:CreateLabel("Current Room: ".. Room.Name)

-- Automatic Room Switch

game:GetService("Workspace").ChildAdded:Connect(function(child) 
    wait(.15) -- Wait for it to load
    if child:IsA("Model") then
        if child:FindFirstChild("RoomScript") then
            getRoom()
            RoomInformation:Set("Current Room: ".. Room.Name)
            Rayfield:Notify({
                Title = "Room refreshed!",
                Content = "Refreshed to " .. Room.Name,
                Duration = 2.5,
            })
        end
    end
end)

-- Room
local RoomSection = ToolsTab:CreateSection("Room Tools")

local TeleportToCoins = ToolsTab:CreateButton({
    Name = "Teleport to Coins (Also locates Gigglers Gift)",
    Callback = function()
        local hrp = player.Character.HumanoidRootPart
        local plrPos = hrp.CFrame

        local found = false

        for i,v in pairs(Room:GetDescendants()) do
            if v.ClassName == "MeshPart" and v.Name == "Coin" then
                found = true
                hrp.CFrame = v.CFrame
                wait(.15)
            end
        end

        if found == false then
            Rayfield:Notify({
            Title = "No coins found!",
            Content = "You nincompoop!",
            Duration = 2,
        })
        hrp.CFrame = plrPos
        end
    end,
})

local TeleportToElevator = ToolsTab:CreateButton({
    Name = "Teleport to Elevator",
    Callback = function()
        local hrp = player.Character.HumanoidRootPart
        hrp.CFrame = game:GetService("Workspace")["Elevator"]["Floor"].CFrame * CFrame.new(0, 5, 0)
    end
})


local EndTouchInterest = ToolsTab:CreateButton({
    Name = "FireTouchInterest on End Checkpoint (buggy)",
    Callback = function () 
        local hrp = player.Character.HumanoidRootPart

        if Room:FindFirstChild("WinPoint") then
            firetouchinterest(Room:FindFirstChild("WinPoint")["TouchInterest"], hrp, true)
            wait(.4)
            firetouchinterest(Room:FindFirstChild("WinPoint")["TouchInterest"], hrp, false)
            return
        end

        firetouchinterest(Room.Checkpoints.EndCheckpoint, hrp, true)
        wait(1)
        firetouchinterest(Room.Checkpoints.EndCheckpoint, hrp, false)
    end,
})

local EndTouchInterest = ToolsTab:CreateButton({
    Name = "Teleport to End Checkpoint",
    Callback = function () 
        local hrp = player.Character.HumanoidRootPart
        hrp.CFrame = Room.Checkpoints.EndCheckpoint.CFrame
    end,
})

if devTools == true then
local DebugSection = ToolsTab:CreateSection("Dev Tools")

local ForceRoomRefresh = ToolsTab:CreateButton({
    Name = "Refresh Room",
    Callback = function()
        getRoom()
        RoomInformation:Set("Current Room: ".. Room.Name)
        Rayfield:Notify({
            Title = "Room refreshed!",
            Content = "Refreshed to " .. Room.Name,
            Duration = 1,
        })
    end,
})

function traceToWorkspace (inst)
    local path = ""
    local node = inst
    while node.Name ~= "Workspace" do
        path = path .. node.Name .. " (" .. node.ClassName .. ") << "
        node = node.Parent
    end
    path = path .. node.Name .. " << "
    return path
end

ToolsTab:CreateButton({
    Name = "Get All Room TouchInterests",
    Callback = function()
        for i,v in pairs(Room:GetDescendants())do
            if v.ClassName == "TouchInterest" then
                print(traceToWorkspace(v))
            end
        end
    end,
})

ToolsTab:CreateButton({
    Name = "Get All Room ProximityPrompts",
    Callback = function()
        for i,v in pairs(Room:GetDescendants())do
            if v.ClassName == "ProximityPrompt" then
                print(traceToWorkspace(v))
            end
        end
    end,
})

ToolsTab:CreateButton({
    Name = "Get All Room ClickDetectors",
    Callback = function()
        for i,v in pairs(Room:GetDescendants())do
            if v.ClassName == "ClickDetector" then
                print(traceToWorkspace(v))
            end
        end
    end,
})

end

if identifyexecutor():match("Nihon") == nil then
    ToolsTab:CreateLabel("If some of these functions are not working, it most likely means your executor is not UNC-compliant. Get Nihon.lol!")
end
-- Room Specific Config
local Floors = {
    ["Teapot Dodgeball"] = {
        ["Teleport to Finish"] = function()
            local hrp = player.Character.HumanoidRootPart
            hrp.CFrame = Room["Build"]["Finish"].CFrame * CFrame.new(0,6,0)
        end
    },
    ["Jeremy"] = {
        ["Teleport to Button"] = function()
            local hrp = player.Character.HumanoidRootPart
            hrp.CFrame = Room["Build"]["Button"]["ButtonContainer"].CFrame * CFrame.new(0,3,0)
        end
    },
    ["UES"] = {
        ["FireClickDetector on all boxes"] = function()
            for i,v in pairs(Room["Build"]:GetChildren()) do
                if v.Name == "cardboard_box" then
                    fireclickdetector(v.ClickDetector, 1)
                end
            end    
        end,
        ["Click on JAOBA"] = function()
            fireclickdetector(Room["Build"]["JAOBA"]["cardboard_box"]["ClickDetector"], 1)
        end
    },
    ["bugbo"] = {
        ["Get All Rocks"] = function()
            for i,v in pairs(Room["Build"]["Rocks"]:GetChildren()) do
                if v.Name == "Rock" and v:FindFirstChild("ClickDetector") then
                    
                    fireclickdetector(v["ClickDetector"], 5)
                end
            end
        end
    },
    ["Minefield"] = {
        ["Teleport to End"] = function()
            local hrp = player.Character.HumanoidRootPart
            hrp.CFrame = Room.Build.WinPart.CFrame * CFrame.new(0, 15, 0)
        end
    },
    ["SLIDE_9999999999_FEET_DOWN_RAINBOW"] = {
        ["FireTouchInterest on Ring"] = function()
            local hrp = player.Character.HumanoidRootPart
            hrp.CFrame = Room.Build.Target.Particle.CFrame
        end
    },
    ["Funny Maze"] = {
        ["FireClick on all notes"] = function()
            for i,v in pairs(Room["Build"]["FinalNotes"]:GetChildren()) do
                if v.Name == "Note" then
                    fireclickdetector(v.ClickDetector, 5)
                end
            end
        end
    },
    ["3008 Room"] = {
        ["Find Lampert"] = function()
            fireclickdetector(Room["Build"]["Lampert"]["ClickDetector"], 5)
        end
    },
    ["Redball Diner"] = {
        ["Reset Reddy (Even when prompt is disabled!)"] = function()
            fireproximityprompt(Room["Build"]["Animatronics"]["Reddy"]["HumanoidRootPart"]["ResetPrompt"])
        end
    },
    ["Pet Capture Deluxe"] = {
        ["Get All Creatures"] = function()
            for i,v in pairs(Room["Build"]["ActiveMonsters"]:GetChildren()) do
                local hrp = player.Character.HumanoidRootPart
                hrp.CFrame = v.CFrame
                fireproximityprompt(v.ProximityPrompt, 5)
                wait(.2)
            end
        end
    },
    ["Snowy Slope"] = {
        ["Win"] = function ()
            local hrp = player.Character.HumanoidRootPart
            hrp.CFrame = Room["WinPart"].CFrame
        end
    },
    ["GASA4"] = {
        ["Get Items"] = function()
            -- fireproximityprompt(Room["Build"]["Stealables"]:FindFirstChild("Part")["ThingButton"])

            for i,v in pairs(Room["Build"]["Stealables"]:GetChildren()) do
                if v.Name == "Part" then
                    local hrp = player.Character.HumanoidRootPart

                    hrp.CFrame = v.CFrame
                    wait()
                    fireproximityprompt(v["ThingButton"])
                    wait()
                    hrp.CFrame = game:GetService("Workspace")["Elevator"]["Floor"].CFrame * CFrame.new(0, 5, 0)
                end
            end
        end
    },
    ["Area 51"] = {
        ["Enable Generators"] = function()
            for i,v in pairs(Room["Build"]:GetChildren()) do
                if v:FindFirstChild('Generator') then
                    local hrp = player.Character.HumanoidRootPart

                    hrp.CFrame = v:FindFirstChild('Generator').CFrame
                    wait(.2)
                    fireproximityprompt(v["Generator"]["ProximityPrompt"])
                end
            end
        end
    },
    ["Color The Tiles"] = {
        ["Go to all tiles"] = function()
            for i,v in pairs(Room["Tiles"]:GetChildren()) do
                if game:GetService("Workspace"):FindFirstChild("ColorTheTiles") then
                    local hrp = player.Character.HumanoidRootPart

                    if v.Name == "Tile" then
                        hrp.CFrame = v.CFrame
                        wait()
                    end
                else
                    break
                end
            end
        end
    },
    ["Redball Temple"] = {
        ["Get spray"] = function()
            local hrp = player.Character.HumanoidRootPart

            hrp.CFrame = Room["Build"]["Claim"].CFrame
            wait(.2)
            fireproximityprompt(Room["Build"]["Claim"]["ItemStockProximityPrompt"])
            wait(.2)
            hrp.CFrame = game:GetService("Workspace")["Elevator"]["Floor"].CFrame * CFrame.new(0, 5, 0)
        end
    },
    ["Obby"] = {
        ["Teleport to End"] = function ()
            local hrp = player.Character.HumanoidRootPart
            hrp.CFrame = Room["Build"]["EndPart"].CFrame
        end
    }
    ,
    ["Find The Path"] = {
        ["Teleport to Winzone"] = function ()
            local hrp = player.Character.HumanoidRootPart

            hrp.CFrame = Room["Build"]["End"]["win_zone"].CFrame
        end
    },
    ["Cardboard Room"] = {
        ["Click all doors"] = function () 
            for i,v in pairs(Room["Build"]["Doors"]:GetChildren()) do
                fireclickdetector(v.ClickDetector, 5)
            end
        end
    },
    ["Forest Camp"] = {
        ["Auto Wood & Cauldron"] = function()
            local CauldronPrompt = Room["Build"]["Cauldron"]["PromptPart"]["ProximityPrompt"]
            local hrp = player.Character.HumanoidRootPart

            for i,v in pairs(Room["Build"]["Firewood"]:GetChildren()) do
                if v:FindFirstChild("ProximityPrompt") then
                    hrp.CFrame = v.CFrame
                    wait(.15)
                    fireproximityprompt(v["ProximityPrompt"])
                    wait(.15)
                    hrp.CFrame = CauldronPrompt.Parent.CFrame
                    wait(.15)
                    fireproximityprompt(CauldronPrompt)
                end
            end
        end
    },
    ["Dropper"] = {
        ["Go to win pool"] = function()
            local hrp = player.Character.HumanoidRootPart
            hrp.CFrame = Room.Build.WinPool.CFrame
        end
    },
    ["Birthday Destructible"] = {
        ["Click all destructibles"] = function()
            for i,v in pairs(Room["Build"]["destructible"]:GetChildren()) do
                if v:IsA("Model") and v:FindFirstChild("ClickDetector") then
                    fireclickdetector(v["ClickDetector"], 5)
                end
            end
        end
    },
    ["Button Competition"] = {
        ["Click all buttons"] = function ()
            for i,v in pairs(Room["Build"]["Buttons"]:GetChildren()) do
                if v:IsA("Model") and v.Name == "Button" then
                    fireclickdetector(v["Button"]["ClickDetector"], 5)
                end
            end
        end
    },
    ["Stat Facility"] = {
        ["Break Near Capacitors"] = function ()
            for i,v in pairs(Room["Build"]["ActiveUnits"]:GetChildren()) do
                if v:FindFirstChild('BigOrb') then
                    fireproximityprompt(v["BigOrb"]["ProximityPrompt"])
                end
            end
        end
    },
    ["Gumball Machine"] = {
        ["Win"] = function() 
            local hrp = player.Character.HumanoidRootPart

            hrp.CFrame = Room["Build"]["Generated"]["EndColumn"]["WinPart"].CFrame
        end
    },
    ["Jermpop Factory"] = {
        ["Hit all buttons"] = function ()
            for i,v in pairs(Room["Build"]["CleanupButtons"]:GetChildren()) do
                local hrp = player.Character.HumanoidRootPart

                hrp.CFrame = v["Prim"].CFrame
                wait(.15)
                fireproximityprompt(v["Prim"]["Prompt"])
            end
        end
    }
}

-- Room Specific Tab

-- Variable Setup
local selectedFloor = ""
local floorOptions = {}
local floorScripts = {}
for i,_ in pairs(Floors) do
    table.insert(floorOptions, i)
end

function purgeElements()
    table.clear(floorScripts)
end

function addFloorSpecificOptions(Floor) 
    for i,v in pairs(Floors[Floor]) do
        table.insert(floorScripts, i)
    end
    selectedFloor = Floor
end

local FloorScripts

local FloorPicker = RoomSpecific:CreateDropdown({
    Name = "Choose Floor",
    Options = floorOptions,
    Callback = function(Option)
        purgeElements()
        addFloorSpecificOptions(Option[1])
        FloorScripts:Refresh(floorScripts)
        FloorScripts:Set({"None"})
    end
})
FloorScripts = RoomSpecific:CreateDropdown({
    Name = "Room Function",
    Options = {},
    Callback = function(Option)
        print(Option[1])
    end
})

local ExecuteFloorScript = RoomSpecific:CreateButton({
    Name = "Run",
    Callback = function(Option)
        Floors[selectedFloor][FloorScripts.CurrentOption[1]]()
    end
})

-- Player
PlayerTab:CreateButton({
    Name = "Set Player Walkspeed to 40",
    Callback = function()
        game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = 40
    end
})

PlayerTab:CreateToggle({
    Name = "Anchor HumanoidRootPart",
    CurrentValue = false,
    Callback = function(Value)
        local hrp = player.Character.HumanoidRootPart
        hrp.Anchored = Value
    end
})

PlayerTab:CreateButton({
    Name = "Respawn",
    Callback = function()
        game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("Respawn"):FireServer()
    end
})

PlayerTab:CreateSection("Store Spoofer")

local EmotePrice

local EmotePicker = PlayerTab:CreateDropdown({
    Name = "Choose Emote",
    Options = emoteListNames,
    Callback = function(Option)
        print(Option[1])
        EmotePrice:Set("Emote Price: " .. emoteList[Option[1]]["Price"])
    end
})

EmotePrice = PlayerTab:CreateLabel("Emote Price: ")

local BuyEmote = PlayerTab:CreateButton({
    Name = "Buy Emote",
    Callback = function()
        local args = {
            [1] = "Emotes",
            [2] = EmotePicker.CurrentOption[1]
        }

        game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("Cosmetics"):WaitForChild("PurchaseCosmetic"):InvokeServer(unpack(args))

    end
})



-- Credits
CreditsTab:CreateParagraph({
    Title = "Credits", 
    Content = "Made by membuffer. Thanks to creators of Rayfield for the graphical interface. Developed on and tested in Nihon.\nBuild 1/14/2025"
})
CreditsTab:CreateButton({
    Name = "Buy Nihon",
    Callback = function()
        setclipboard("https://www.nihon.lol")
        Rayfield:Notify({
                Title = "Copied to Clipboard",
                Content = "Nihon website copied to clipboard.",
                Duration = 1,
        })
    end
})
