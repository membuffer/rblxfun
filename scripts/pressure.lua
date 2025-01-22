-- Script Internals
local monsters = {"Angler", "Froger", "Blitz", "Pandemonium", "A60", "Pinkie", "Chainsmoker",
                    "RidgeFroger", "RidgeAngler", "RidgeBlitz", "RidgePandemonium", "RidgePinkie", "RidgeChainsmoker"}
local items = {"200Currency", "100Currency", "50Currency", "25Currency", "15Currency", "5Currency", "BigFlashBeacon", "Blacklight", "Book", "Chainsaw", "CodeBreacher", "CuteUmbrella", "DwellerPiece", "FlashBeacon", "Flashlight", "Gravelight", "Gummylight", "HealthBoost", "InnerKeyCard", "Lantern", "Medkit", "NormalKeyCard", "Notebook", "RidgeKeyCard", "SPRINT", "SmallLantern", "Splorglight", "Tripwire", "WindupLight", "GeneratorFixed", "EncounterGeneratorFixed" }

local itemAura = 10
local HttpService = game:GetService("HttpService")
local player = game:GetService("Players").LocalPlayer
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local monsterSummonFun = {
    "Only in death, do we part.",
    "Death smiles at us all.",
    "Death takes no bribes.",
    "Rage. Rage into the dying of the light.",
    "The idea is to die young as late as possible.",
    "If a man has not discovered something that he will die for, he isn't fit to live."
}

-- membuffer config
local isNihon = identifyexecutor and identifyexecutor():match("Nihon")

-- Tripwire is automatically in itemsToAura as like a "anti-tripwire"
local config = {
    ignoreList = {"GeneratorFixed", "EncounterGeneratorFixed"},
    highlightItems = {},
    notifyObjects = {"NormalKeyCard", "Medkit"},
    toggleFullbright = false,
    toggleEsp = false,
    toggleMonsterNotif = false,
    toggleDoorsESP = false,
    toggleSuperSpeed = false,
    toggleCurrencyAura = false,
    toggleItemAura = false,
    itemsToAura = {"NormalKeyCard", "InnerKeyCard", "RidgeKeyCard", "Tripwire"}
}

if not isfolder("membuffer") then
    makefolder("membuffer")
end

if not isfolder("membuffer/games") then
    makefolder("membuffer/games")
end

if not isfile("membuffer/games/pressure.json") then
   writefile("membuffer/games/pressure.json", HttpService:JSONEncode(config)) 
else 
    config = HttpService:JSONDecode(readfile("membuffer/games/pressure.json"))
end

function saveConfig ()
    writefile("membuffer/games/pressure.json", HttpService:JSONEncode(config)) 
end

-- Functions
function getMonster(child)
    if table.find(monsters, child.Name) then

        local BillboardGui = Instance.new("BillboardGui")
        local TextLabel = Instance.new("TextLabel")

        BillboardGui.Parent = child
        BillboardGui.Name = "__visual"
        BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        BillboardGui.Active = true
        BillboardGui.AlwaysOnTop = true
        BillboardGui.Size = UDim2.new(0, 200, 0, 50)

        TextLabel.Parent = BillboardGui
        TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TextLabel.BackgroundTransparency = 1.000
        TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
        TextLabel.BorderSizePixel = 0
        TextLabel.Size = UDim2.new(0, 200, 0, 50)
        TextLabel.Font = Enum.Font.SourceSans
        TextLabel.TextColor3 = Color3.fromRGB(255,0,0)
        TextLabel.TextScaled = true
        TextLabel.TextSize = 14.000
        TextLabel.TextStrokeTransparency = 0.000
        TextLabel.TextWrapped = true
        TextLabel.Text = child.Name


        local title = child.Name .. " spawned!"

        if child.Name == "A60" then
            title = "RUN.. NOW... (A60 MultiMonster)"
        end
        Rayfield:Notify({
            Title = title,
            Content = monsterSummonFun[math.random(1, #monsterSummonFun)],
            Duration = 6,
        })
    end
end

function updateDoors()
    for i,door in pairs(game:GetService('Workspace')["Rooms"]:GetDescendants()) do
        if door and door.Name == "NormalDoor" and door:IsA("Model") and door.PrimaryPart and door.Parent.Name == "Entrances" then
            if door.PrimaryPart:FindFirstChild("__door") then
                continue
            end

            local BillboardGui = Instance.new("BillboardGui")
            local TextLabel = Instance.new("TextLabel")

            BillboardGui.Parent = door.PrimaryPart
            BillboardGui.Name = "__door"
            BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
            BillboardGui.Active = true
            BillboardGui.AlwaysOnTop = true
            BillboardGui.Size = UDim2.new(0, 200, 0, 50)

            TextLabel.Parent = BillboardGui
            TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            TextLabel.BackgroundTransparency = 1.000
            TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
            TextLabel.BorderSizePixel = 0
            TextLabel.Size = UDim2.new(0, 200, 0, 50)
            TextLabel.Font = Enum.Font.SourceSans
            TextLabel.TextColor3 = Color3.fromRGB(0,255,0)
            TextLabel.TextScaled = true
            TextLabel.TextSize = 14.000
            TextLabel.TextStrokeTransparency = 0.000
            TextLabel.TextWrapped = true
            TextLabel.Text = "Normal Door"
            TextLabel.TextTransparency = 0.3
        end
    end
    
end

function scanItems()
    -- More bruteforce
    -- Look. I know this doesnt look good, but doing a ChildAdded on an arbritrary time (using WaitForChild) between rooms (some players really like staying in a room that goes over timeout), this was used.
    for _, v in pairs(game:GetService('Workspace')["Rooms"]:GetDescendants()) do
        if v.Name == "ProxyPart" and not table.find(config.ignoreList, v.Parent.Name) then
            if v:FindFirstChild("__itemvisual") then
                continue
            end

            local BillboardGui = Instance.new("BillboardGui")
            local TextLabel = Instance.new("TextLabel")

            BillboardGui.Parent = v
            BillboardGui.Name = "__itemvisual"
            BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
            BillboardGui.Active = true
            BillboardGui.AlwaysOnTop = true
            BillboardGui.Size = UDim2.new(0, 200, 0, 50)

            TextLabel.Parent = BillboardGui
            TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            TextLabel.BackgroundTransparency = 1.000
            TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
            TextLabel.BorderSizePixel = 0
            TextLabel.Size = UDim2.new(0, 200, 0, 50)
            TextLabel.Font = Enum.Font.SourceSans
            TextLabel.TextColor3 = Color3.fromRGB(85, 170, 255)
            TextLabel.TextScaled = true
            TextLabel.TextSize = 14.000
            TextLabel.TextStrokeTransparency = 0.000
            TextLabel.TextWrapped = true
            TextLabel.Text = v.Parent.Name

            if v.Parent.Name:match("Currency") then
                TextLabel.TextTransparency = 0.4
                TextLabel.TextStrokeTransparency = 0.4
            else
                TextLabel.TextColor3 = Color3.fromRGB(255,255,255)
            end

            if table.find(config.notifyObjects, v.Parent.Name) then
                Rayfield:Notify({
                    Title = v.Parent.Name .. " fonud.",
                    Content = "ooh shiny",
                    Duration = 3
                })
            end
        end
    end
end

function executeCurrencyAura()
    for _, v in pairs(game:GetService('Workspace')["Rooms"]:GetDescendants()) do
        if v.Name == "ProxyPart" and v.Parent.Name:match("Currency") then
            if ((v.Position - player.Character.HumanoidRootPart.Position).Magnitude < itemAura) then
                if v:FindFirstChild("ProximityPrompt") then
                    fireproximityprompt(v:FindFirstChild("ProximityPrompt"))
                end
            end
        end
    end
end

function executeItemAura()
    for _, v in pairs(game:GetService('Workspace')["Rooms"]:GetDescendants()) do
        if v.Name == "ProxyPart" and table.find(config.itemsToAura, v.Parent.Name) then
            if ((v.Position - player.Character.HumanoidRootPart.Position).Magnitude < itemAura) then
                if v:FindFirstChild("ProximityPrompt") then
                    fireproximityprompt(v:FindFirstChild("ProximityPrompt"))
                end
            end
        end
    end
end

function executeBatteryAura()
    for _, v in pairs(game:GetService('Workspace')["Rooms"]:GetDescendants()) do
        if v.Name == "ProxyPart" and v.Parent.Name:match("Battery") then
            if ((v.Position - player.Character.HumanoidRootPart.Position).Magnitude < itemAura) then
                if v:FindFirstChild("ProximityPrompt") then
                    fireproximityprompt(v:FindFirstChild("ProximityPrompt"))
                end
            end
        end
    end
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
    Name = "Pressure Menu // by membuffer",
    LoadingTitle = "Made by membuffer",
    LoadingSubtitle = "Developed on and for Nihon",
    DisableRayfieldPrompts = true
})

-- Game Tab
local GameTab = Window:CreateTab("Viusal")

-- FullBright
GameTab:CreateSection("World")

spawn(function()
    while config.toggleFullbright do
        game:GetService("Lighting").Brightness = 3
        game:GetService("Lighting").ClockTime = 14
        game:GetService("Lighting").EnvironmentDiffuseScale = 0
        game:GetService("Lighting").EnvironmentSpecularScale = 0
        task.wait(.1)
    end
end)
GameTab:CreateToggle({
    Name = "Fullbright",
    CurrentValue = config.toggleFullbright,
    Callback = function(value)
        config.toggleFullbright = value
        saveConfig()
        if value == false then
            game:GetService("Lighting").Brightness = 0
            game:GetService("Lighting").ClockTime = 0
            game:GetService("Lighting").EnvironmentDiffuseScale = 0.3
            game:GetService("Lighting").EnvironmentSpecularScale = 0.3
        else
            while config.toggleFullbright do
                game:GetService("Lighting").Brightness = 3
                game:GetService("Lighting").ClockTime = 14
                game:GetService("Lighting").EnvironmentDiffuseScale = 0
                game:GetService("Lighting").EnvironmentSpecularScale = 0
                task.wait(.1)
            end
        end
        
    end
})

GameTab:CreateSection("ESP")
-- Detect Items
task.spawn(function()
    while config.toggleEsp do
        scanItems()
        task.wait(0.2)
    end
end)
GameTab:CreateToggle({
    Name = "Item ESP",
    CurrentValue = config.toggleEsp,
    Callback = function(value)
        config.toggleEsp = value
        saveConfig()
        if value == false then
            for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
                if v:IsA("BillboardGui") and v.Name == "__itemvisual" then
                    v:Destroy()
                end
            end
        end

        while config.toggleEsp do
            scanItems()
            task.wait(0.2)
        end

    end
})

GameTab:CreateDropdown({
    Name = "Notify Specific Items",
    Options = items,
    CurrentOption = config.notifyObjects,
    MultipleOptions = true,
    Callback = function(Options)
        config.notifyObjects = Options
        saveConfig()
    end
})
GameTab:CreateDropdown({
    Name = "Item Ignores",
    Options = items,
    CurrentOption = config.ignoreList,
    MultipleOptions = true,
    Callback = function(Options)
        config.ignoreList = Options
        saveConfig()
    end
})

-- Node Monster Detector
local connection
if config.toggleMonsterNotif then
    connection = game:GetService('Workspace').ChildAdded:Connect(getMonster)
end
GameTab:CreateToggle({
    Name = "Alert Node Monster Spawn And Type",
    CurrentValue = config.toggleMonsterNotif,
    Callback = function(value)
        config.toggleMonsterNotif = value
        saveConfig()
        if value then
            connection = game:GetService('Workspace').ChildAdded:Connect(getMonster)
        else
            connection:Disconnect()
            connection = nil
        end
    end
})

-- Normal Door Detector
task.spawn(function ()
    while config.toggleDoorsESP do
        updateDoors()
        task.wait(.2)
    end
end)
GameTab:CreateToggle({
    Name = "Get Normal Door",
    CurrentValue = config.toggleDoorsESP,
    Callback = function(value)
        config.toggleDoorsESP = value
        saveConfig()

        if value == false then
            for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
                if v:IsA("BillboardGui") and v.Name == "__door" then
                    v:Destroy()
                end
            end
        end
        while config.toggleDoorsESP do
            updateDoors()
            task.wait(.2)
        end
    end
})

-- Player Tab
local PlayerTab = Window:CreateTab("Player")

PlayerTab:CreateSection("Movement")

-- Speed
spawn(function()
    while config.toggleSuperSpeed do
        player.Character.Humanoid.WalkSpeed = 70
        task.wait(.1)
    end
end) 
PlayerTab:CreateToggle({
    Name = "Super Speed",
    CurrentValue = config.toggleSuperSpeed,
    Callback = function( value )
        config.toggleSuperSpeed = value
        saveConfig()

        if value == false then
            player.Character.Humanoid.WalkSpeed = 16
        else
            while config.toggleSuperSpeed do
                player.Character.Humanoid.WalkSpeed = 70
                task.wait(.1)
            end 
        end
    end
})

-- Currency Aura
spawn(function()
    while config.toggleCurrencyAura do
        executeCurrencyAura()
        task.wait(.1)
    end
end)

PlayerTab:CreateSection("Currency Aura")

PlayerTab:CreateToggle({
    Name = "Currency Aura",
    CurrentValue = config.toggleCurrencyAura,
    Callback = function( value )
        config.toggleCurrencyAura = value
        saveConfig()

        while config.toggleCurrencyAura do
            executeCurrencyAura()
            task.wait(.1)
        end
    end
})

-- Item Aura
PlayerTab:CreateSection("Item Aura")

PlayerTab:CreateDropdown({
    Name = "Item Aura Selection",
    Options = items,
    CurrentOption = config.itemsToAura,
    MultipleOptions = true,
    Callback = function(Option)
        config.itemsToAura = Option
        saveConfig()
    end
})

task.spawn(function()
    while config.toggleItemAura do
        executeItemAura()
        task.wait(.1)
    end
end)
PlayerTab:CreateToggle({
    Name = "Item Aura",
    CurrentValue = config.toggleItemAura,
    Callback = function( value )
        config.toggleItemAura = value
        while config.toggleItemAura do
            executeItemAura()
            task.wait(.1)
        end
    end
})

task.spawn(function()
    while config.toggleBatteryAura do
        executeBatteryAura()
        task.wait(.1)
    end
end)
PlayerTab:CreateToggle({
    Name = "Battery Aura",
    CurrentValue = config.toggleBatteryAura,
    Callback = function( value )
        config.toggleBatteryAura = value
        while config.toggleBatteryAura do
            executeBatteryAura()
            task.wait(.1)
        end
    end
})
