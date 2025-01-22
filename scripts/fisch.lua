-- Script Internals
local isNihon = identifyexecutor and identifyexecutor():match("Nihon")
local HttpService = game:GetService("HttpService")
local player = game:GetService("Players").LocalPlayer
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

-- membuffer configurator

local config = {
    toggleAutoShake = false,
    enablePerfectCast = false,
    toggleAutoFinish = false,
    toggleFloat = false
}

if not isfolder("membuffer") then
    makefolder("membuffer")
end

if not isfolder("membuffer/games") then
    makefolder("membuffer/games")
end

if not isfile("membuffer/games/fisch.json") then
   writefile("membuffer/games/fisch.json", HttpService:JSONEncode(config)) 
else 
    config = HttpService:JSONDecode(readfile("membuffer/games/fisch.json"))
end

function saveConfig ()
    writefile("membuffer/games/pressure.json", HttpService:JSONEncode(config)) 
end

-- Rayfield

if not isNihon then
    Rayfield:Notify({
        Title = "Incompatible Executor",
        Content = "Some features might not work due to an incompatible executor. This was developed for and on Nihon.",
        Duration = 6,
    })
end

local Window = Rayfield:CreateWindow({
    Name = "Fisch Menu // by membuffer",
    LoadingTitle = "Made by membuffer",
    LoadingSubtitle = "Developed on and for Nihon",
    DisableRayfieldPrompts = true
})

-- Game
local GameTab = Window:CreateTab("Game")

-- AutoFisch
local autoShakeConnection
function autoShake()
    if config.toggleAutoShake then
        autoShakeConnection = player.PlayerGui.ChildAdded:Connect(function (child)
            if child.Name == "shakeui" then
                while player.PlayerGui:WaitForChild("shakeui") and player.PlayerGui.shakeui:WaitForChild('safezone') and player.PlayerGui.shakeui.safezone:WaitForChild("button") do
                    if not config.toggleAutoShake then
                        autoShakeConnection:Disconnect()
                        break
                    end
                    local pos = player.PlayerGui.shakeui.safezone.button.AbsolutePosition
                    local size = player.PlayerGui.shakeui.safezone.button.AbsoluteSize
                    mousemoveabs(pos.X + (size.X // 2), pos.Y + (size.Y // 2) + 60)
                    mouse1click()
                    task.wait()
                end
            end
        end)
    else
        if autoShakeConnection then
            autoShakeConnection:Disconnect()
            autoShakeConnection = nil
        end        
    end
end

autoShake()

GameTab:CreateToggle({
    Name = "Auto Shake (Disable Shift Lock!)",
    CurrentValue = config.toggleAutoShake,
    Callback = function(value)
        config.toggleAutoShake = value
        saveConfig()
        autoShake()
    end
})

-- Auto Finish Reel

local autoFinishReelConnection

function autoFinish()
    if config.toggleAutoFinish then
        autoFinishReelConnection = player.PlayerGui.ChildAdded:Connect(function (child)
            task.wait(2.1)
            if child.Name == "reel" then
                local args = {
                    [1] = 100,
                    [2] = false
                }

                game:GetService("ReplicatedStorage"):WaitForChild("events"):WaitForChild("reelfinished"):FireServer(unpack(args))
            end
        end)
    else
        if autoFinishReelConnection then
            autoFinishReelConnection:Disconnect()
            autoFinishReelConnection = nil
        end 
    end
end

autoFinish()

GameTab:CreateToggle({
    Name = "Auto Reel",
    CurrentValue = config.toggleAutoFinish,
    Callback = function(value)
        config.toggleAutoFinish = value
        saveConfig()
        autoFinish()
    end
})

local autoFarmToggle = false

GameTab:CreateToggle({
    Name = "Auto Fish (Equip Rod First!)",
    CurrentValue = false,
    Callback = function(value)
        local rod
        autoFarmToggle = value
        for _,v in pairs(player.Character:GetChildren()) do
            if v:FindFirstChild("rod/client") then
                rod = v
                break
            end
        end

        if rod then
            local fixPosition = player.Character.HumanoidRootPart.CFrame
            config.toggleAutoShake = value
            config.toggleAutoFinish = value
            autoShake()
            autoFinish()
            while autoFarmToggle do
                player.Character.HumanoidRootPart.AssemblyLinearVelocity = Vector3.new(0,0,0)
                player.Character.HumanoidRootPart.CFrame = fixPosition
                if not rod.values.casted.Value then
                    local args = {
                        [1] = 98.5 + .1*(math.random(0, 15)),
                        [2] = 1
                    }

                    rod.events.cast:FireServer(unpack(args))
                end
                task.wait()
            end
        else
            Rayfield:Notify({
                Title = "Equip your Rod!",
                Content = "Autofarm needs to know what rod you are using!",
                Duration = 6,
            })
        end
    end
})

GameTab:CreateButton({
    Name = "Sell All",
    Callback = function()
        game:GetService("ReplicatedStorage"):WaitForChild("events"):WaitForChild("SellAll"):InvokeServer()
    end
})

-- Modified Cast
GameTab:CreateSection("Perfect Cast")

GameTab:CreateToggle({
    Name = "Enable Perfect Cast Keybind",
    CurrentValue = config.enablePerfectCast,
    Callback = function(value)
        config.enablePerfectCast = value
        saveConfig()
    end
})

GameTab:CreateKeybind({
   Name = "Perfect Cast",
   CurrentKeybind = "H",
   HoldToInteract = false,
   Flag = "Keybind1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Keybind)
        if config.enablePerfectCast then
            local args = {
                [1] = 98.5 + .1*(math.random(0, 15)),
                [2] = 1
            }

            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flimsy Rod").events.cast:FireServer(unpack(args))

        end
   end,
})

-- Teleports Tab
local TPTab = Window:CreateTab("Teleports")
local teleports = {}
local teleportStrings = {}

local customTeleports = {
    ["Shipwright"] = CFrame.new(362.93310546875, 133.61595153808594, 257.4730529785156),
    ["Merchant"] = CFrame.new(465.396484375, 150.60931396484375, 231.8032684326172)
}

for _,v in pairs(workspace.world.spawns:GetChildren()) do
    if v:FindFirstChild("spawn") then
        teleports[v.Name] = v:FindFirstChild("spawn").CFrame * CFrame.new(0, 8, 0)
        table.insert(teleportStrings, v.Name)
    end
end

TPTab:CreateSection("Town Teleport")
local TeleportOption = TPTab:CreateDropdown({
    Name = "Town Teleport Selector",
    Options = teleportStrings,
    Callback = function(Option)
        player.Character.HumanoidRootPart.CFrame = teleports[Option[1]]
    end
})

TPTab:CreateSection("Custom Teleports")
for name,cframeSelect in pairs(customTeleports) do
    TPTab:CreateButton({
        Name = "Teleport to " .. name,
        Callback = function()
            player.Character.HumanoidRootPart.CFrame = cframeSelect
        end
    })
end

-- Player Tab
local PlayerTab = Window:CreateTab("Player")

-- Float
local floatConnection

function float()
    if config.toggleFloat then
        local Float = Instance.new('Part')
        Float.Name = "membuffer_float"
        Float.Parent = player.Character
        Float.Transparency = 1
        Float.Size = Vector3.new(2,0.2,1.5)
        Float.Anchored = true
        local FloatValue = -3.1
        Float.CFrame = player.Character.HumanoidRootPart.CFrame * CFrame.new(0,FloatValue,0)
        floatConnection = game:GetService("RunService").RenderStepped:Connect(function ()
            Float.CFrame = player.Character.HumanoidRootPart.CFrame * CFrame.new(0,FloatValue,0)
        end)
    else
        if floatConnection then
            floatConnection:Disconnect()
            floatConnection = nil
        end
        if player.Character:FindFirstChild("membuffer_float") then
            player.Character:FindFirstChild("membuffer_float"):Destroy()
        end
    end
end

float()

PlayerTab:CreateToggle({
    Name = "Float",
    CurrentValue = config.toggleFloat,
    Callback = function(value)
        config.toggleFloat = value
        saveConfig()
        float()
    end
})
