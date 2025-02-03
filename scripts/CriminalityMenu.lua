-- Script Internals
local HttpService = game:GetService("HttpService")
local player = game:GetService("Players").LocalPlayer
local Rayfield = loadstring(game:HttpGet("https://raw.githubusercontent.com/membuffer/rblxfun/refs/heads/main/libs/rayfield_fork.lua"))() 
-- membuffer configurator

local config = {
    autoLoadVape = false,
    bredMakurzESP = false,
    shopzESP = false,
    pileESP = false,
    moneyAura = false,
    pileAura = false,
    weaponAura = false,
    autoLockpick = false,
    weaponList = {}
}

if not isfolder("membuffer") then
    makefolder("membuffer")
end

if not isfolder("membuffer/games") then
    makefolder("membuffer/games")
end

if not isfile("membuffer/games/criminality.json") then
   writefile("membuffer/games/criminality.json", HttpService:JSONEncode(config)) 
else 
    config = HttpService:JSONDecode(readfile("membuffer/games/criminality.json"))
end

function saveConfig ()
    writefile("membuffer/games/criminality.json", HttpService:JSONEncode(config)) 
end

-- Script Backend
local bredmakurz = {}
local piles = {}
local shops = {}
local bredmakurzTypes = {
    [1] = "Register",
    [2] = "Small Safe",
    [3] = "Medium Safe"
}
local guiFolder = Instance.new("Folder", game:GetService("CoreGui"))
guiFolder.Name = "__membuffer"

function registerObject(object)
    local entInfo = {
        ESPObject = nil,
        WorldObject = object
    }

    local espObj = {
        ["BillboardGui"] = Instance.new("BillboardGui"),
        ["Name"] = Instance.new("TextLabel"),
        ["TextLabel"] = Instance.new("TextLabel")
    }

    --Properties:

    espObj["BillboardGui"].Parent = guiFolder
    espObj["BillboardGui"].Adornee = object:WaitForChild("MainPart")
    espObj["BillboardGui"].ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    espObj["BillboardGui"].Active = true
    espObj["BillboardGui"].AlwaysOnTop = true
    espObj["BillboardGui"].LightInfluence = 1.000
    espObj["BillboardGui"].Size = UDim2.new(7, 0, 3, 0)
    espObj["BillboardGui"].StudsOffset = Vector3.new(0, 2, 0)

    espObj["Name"].Name = "Name"
    espObj["Name"].Parent = espObj["BillboardGui"]
    espObj["Name"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    espObj["Name"].BackgroundTransparency = 1.000
    espObj["Name"].BorderColor3 = Color3.fromRGB(0, 0, 0)
    espObj["Name"].BorderSizePixel = 0
    espObj["Name"].Size = UDim2.new(1, 0, 0.5, 0)
    espObj["Name"].Font = Enum.Font.SourceSans
    espObj["Name"].Text =  bredmakurzTypes[object:FindFirstChild("Type").Value]
    espObj["Name"].TextColor3 = Color3.fromRGB(0, 255, 0)
    espObj["Name"].TextScaled = true
    espObj["Name"].TextSize = 14.000
    espObj["Name"].TextStrokeTransparency = 0.000
    espObj["Name"].TextWrapped = true

    espObj["TextLabel"].Parent = espObj["BillboardGui"]
    espObj["TextLabel"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    espObj["TextLabel"].BackgroundTransparency = 1.000
    espObj["TextLabel"].BorderColor3 = Color3.fromRGB(0, 0, 0)
    espObj["TextLabel"].BorderSizePixel = 0
    espObj["TextLabel"].Position = UDim2.new(0, 0, 0.5, 0)
    espObj["TextLabel"].Size = UDim2.new(1, 0, 0.5, 0)
    espObj["TextLabel"].Font = Enum.Font.SourceSans
    espObj["TextLabel"].Text = "*BROKEN*"
    espObj["TextLabel"].TextColor3 = Color3.fromRGB(255, 0, 0)
    espObj["TextLabel"].TextScaled = true
    espObj["TextLabel"].TextSize = 14.000
    espObj["TextLabel"].TextStrokeTransparency = 0.000
    espObj["TextLabel"].TextWrapped = true

    entInfo.ESPObject = espObj
    table.insert(bredmakurz, entInfo)
end


-- Rayfield


local Window = Rayfield:CreateWindow({
    Name = "Criminality Menu // by membuffer",
    LoadingTitle = "Made by membuffer",
    LoadingSubtitle = "Using a fork of Rayfield",
    DisableRayfieldPrompts = true
})

-- Game
local GameTab = Window:CreateTab("Game")
local loadedVape = false

function loadVapeV4()
    if not loadedVape then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/main/NewMainScript.lua", true))()
    end
    loadedVape = true
end
if config.autoLoadVape then
    loadVapeV4()
end

GameTab:CreateSection("VapeV4")
GameTab:CreateButton({
    Name = "Load VapeV4",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/main/NewMainScript.lua", true))()
    end
})

GameTab:CreateToggle({
    Name = "Load VapeV4 on Startup",
    CurrentValue = config.autoLoadVape,
    Callback = function(value)
        config.autoLoadVape = value
        saveConfig()
        if value then
            loadVapeV4()
        end
    end
})
GameTab:CreateSection("Game")

GameTab:CreateButton({
    Name = "Phase",
    Callback = function ()
        local localPlayer = game:GetService("Players").LocalPlayer
        local hrp = localPlayer.Character.HumanoidRootPart

        hrp.CFrame = hrp.CFrame * CFrame.new(0,0,-4)
    end
})

-- Money Aura
function moneyAura()
    spawn(function ()
        while config.moneyAura do
            for _,cash in pairs(workspace.Filter.SpawnedBread:GetChildren()) do
                if cash:FindFirstChild("ProximityPrompt") then
                    local connections = getconnections(cash:FindFirstChild("ProximityPrompt").Triggered)
                    for i, connection in ipairs(connections) do
                        connection.Fire(connection)
                    end
                end
            end
            task.wait(.1)
        end
    end)
end
moneyAura()
GameTab:CreateToggle({
    Name = "Money Aura",
    CurrentValue = config.moneyAura,
    Callback = function(value)
        config.moneyAura = value
        saveConfig()
        if value then
            moneyAura()
        end
    end
})

-- Pile Aura
function pileAura()
    spawn(function ()
        while config.pileAura do
            for _,object in pairs(workspace.Filter.SpawnedPiles:GetChildren()) do
                if object:FindFirstChild("MeshPart") and object:FindFirstChild("MeshPart"):FindFirstChild("ProximityPrompt") then
                    local connections = getconnections(object:FindFirstChild("MeshPart"):FindFirstChild("ProximityPrompt").Triggered)
                    for i, connection in ipairs(connections) do
                        connection.Fire(connection)
                    end
                end
            end
            task.wait(.1)
        end
    end)
end
pileAura()
GameTab:CreateToggle({
    Name = "Pile Aura",
    CurrentValue = config.pileAura,
    Callback = function(value)
        config.pileAura = value
        saveConfig()
        if value then
            pileAura()
        end
    end
})
-- AutoLockpick
function autoLockpick()
    spawn(function ()
        local dist = 3
        while config.autoLockpick do
            local lpG = game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("LockpickGUI")
            if lpG then
            
                local bar = game:GetService("Players").LocalPlayer.PlayerGui.LockpickGUI.MF.LP_Frame.Line
                local b1 = game:GetService("Players").LocalPlayer.PlayerGui.LockpickGUI.MF.LP_Frame.Frames:FindFirstChild("B1")
                local b2 = game:GetService("Players").LocalPlayer.PlayerGui.LockpickGUI.MF.LP_Frame.Frames:FindFirstChild("B2")
                local b3 = game:GetService("Players").LocalPlayer.PlayerGui.LockpickGUI.MF.LP_Frame.Frames:FindFirstChild("B3")
                
                if b1 and b1.Visible then
                    local mag = math.abs(b1.Bar.AbsolutePosition.Y - bar.AbsolutePosition.Y)
                    if mag < dist then
                        print(mag)
                        mouse1click()
                        b1.Visible = false
                    end
                    
                elseif b2 and b2.Visible then
                    local mag = math.abs(b2.Bar.AbsolutePosition.Y - bar.AbsolutePosition.Y)
                    if mag < dist then
                        print(mag)
                        mouse1click()
                        b2.Visible = false
                    end
                    
                elseif b3 and b3.Visible then
                    local mag = math.abs(b3.Bar.AbsolutePosition.Y - bar.AbsolutePosition.Y)
                    if mag < dist then
                        print(mag)
                        mouse1click()
                        b3.Visible = false
                    end
                    
                end
                
            end
            task.wait()
        end
    end)
end
autoLockpick()
GameTab:CreateToggle({
    Name = "Auto Lockpick",
    CurrentValue = config.autoLockpick,
    Callback = function(value)
        config.autoLockpick = value
        saveConfig()
        if value then
            autoLockpick()
        end
    end
})

-- ESP
local ESPTab = Window:CreateTab("ESP")

-- BredMakurz
local bredConnection
function bredESP()
    for _,object in pairs(workspace.Map.BredMakurz:GetChildren()) do
        registerObject(object)
    end
    
    bredConnection = workspace.Map.BredMakurz.ChildAdded:connect(registerObject)
    spawn(function ()
        while config.bredMakurzESP do
            for i,entity in pairs(bredmakurz) do
                if not entity.WorldObject:IsDescendantOf(workspace) then
                    entity.ESPObject["BillboardGui"]:Destroy()
                    table.remove(bredmakurz, table.find(bredmakurz, entity))
                    entity = nil
                    continue
                end
                if entity.WorldObject:FindFirstChild("Values") and entity.WorldObject:FindFirstChild("Values"):FindFirstChild("Broken") then
                    entity.ESPObject["TextLabel"].Visible = entity.WorldObject:FindFirstChild("Values"):FindFirstChild("Broken").Value
                end
            end
            task.wait()
        end
    end)
end

if config.bredMakurzESP then
    bredESP()
end

ESPTab:CreateToggle({
    Name = "Breadmaker ESP",
    CurrentValue = config.bredMakurzESP,
    Callback = function(value)
        config.bredMakurzESP = value
        saveConfig()
        if value then
            bredESP()
        else
            for i,entity in pairs(bredmakurz) do
                entity.ESPObject["BillboardGui"]:Destroy()
                table.remove(bredmakurz, table.find(bredmakurz, entity))
                entity = nil
            end
            if bredConnection then
                bredConnection:Disconnect()
            end
        end

    end
})

-- Functions
local pileConnection
function registerPile(object)
    local entInfo = {
        ESPObject = nil,
        WorldObject = object
    } 

    local espObj = {
        ["BillboardGui"] = Instance.new("BillboardGui"),
        ["Name"] = Instance.new("TextLabel"),
        ["TextLabel"] = Instance.new("TextLabel")
    }

    --Properties:

    espObj["BillboardGui"].Parent = guiFolder
    espObj["BillboardGui"].Adornee = object:WaitForChild("MeshPart")
    espObj["BillboardGui"].ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    espObj["BillboardGui"].Active = true
    espObj["BillboardGui"].AlwaysOnTop = true
    espObj["BillboardGui"].LightInfluence = 1.000
    espObj["BillboardGui"].Size = UDim2.new(7, 0, 3, 0)
    espObj["BillboardGui"].StudsOffset = Vector3.new(0, 2, 0)

    espObj["Name"].Name = "Name"
    espObj["Name"].Parent = espObj["BillboardGui"]
    espObj["Name"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    espObj["Name"].BackgroundTransparency = 1.000
    espObj["Name"].BorderColor3 = Color3.fromRGB(0, 0, 0)
    espObj["Name"].BorderSizePixel = 0
    espObj["Name"].Size = UDim2.new(1, 0, 1, 0)
    espObj["Name"].Font = Enum.Font.SourceSans
    espObj["Name"].Text = "Pile"
    espObj["Name"].TextColor3 = Color3.fromRGB(255, 166, 23)
    espObj["Name"].TextScaled = true
    espObj["Name"].TextSize = 14.000
    espObj["Name"].TextStrokeTransparency = 0.000
    espObj["Name"].TextWrapped = true

    entInfo.ESPObject = espObj
    table.insert(piles, entInfo)
end

function pileESP()
    for _,object in pairs(workspace.Filter.SpawnedPiles:GetChildren()) do
        registerPile(object)
    end
    
    pileConnection = workspace.Filter.SpawnedPiles.ChildAdded:connect(registerPile)
end

if config.pileESP then
    pileESP()
end

ESPTab:CreateToggle({
    Name = "Pile ESP",
    CurrentValue = config.pileESP,
    Callback = function(value)
        config.pileESP = value
        saveConfig()
        if value then
            pileESP()
        else
            for i,entity in pairs(piles) do
                entity.ESPObject["BillboardGui"]:Destroy()
                table.remove(piles, table.find(piles, entity))
                entity = nil
            end
            if pileConnection then
                pileConnection:Disconnect()
            end
        end

    end
})
-- SHOP ESP
function registerShop(object)
    local entInfo = {
        ESPObject = nil,
        WorldObject = object
    } 

    local espObj = {
        ["BillboardGui"] = Instance.new("BillboardGui"),
        ["Name"] = Instance.new("TextLabel"),
        ["TextLabel"] = Instance.new("TextLabel")
    }

    --Properties:

    espObj["BillboardGui"].Parent = guiFolder
    espObj["BillboardGui"].Adornee = object:WaitForChild("MainPart")
    espObj["BillboardGui"].ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    espObj["BillboardGui"].Active = true
    espObj["BillboardGui"].AlwaysOnTop = true
    espObj["BillboardGui"].LightInfluence = 1.000
    espObj["BillboardGui"].Size = UDim2.new(7, 0, 3, 0)
    espObj["BillboardGui"].StudsOffset = Vector3.new(0, 2, 0)

    espObj["Name"].Name = "Name"
    espObj["Name"].Parent = espObj["BillboardGui"]
    espObj["Name"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    espObj["Name"].BackgroundTransparency = 1.000
    espObj["Name"].BorderColor3 = Color3.fromRGB(0, 0, 0)
    espObj["Name"].BorderSizePixel = 0
    espObj["Name"].Size = UDim2.new(1, 0, 1, 0)
    espObj["Name"].Font = Enum.Font.SourceSans
    espObj["Name"].Text =  object.Name
    espObj["Name"].TextColor3 = Color3.fromRGB(56, 245, 255)
    espObj["Name"].TextScaled = true
    espObj["Name"].TextSize = 14.000
    espObj["Name"].TextStrokeTransparency = 0.000
    espObj["Name"].TextWrapped = true

    entInfo.ESPObject = espObj
    table.insert(shops, entInfo)
end

function shopESP()
    for _,object in pairs(workspace.Map.Shopz:GetChildren()) do
        registerShop(object)
    end
end

if config.shopzESP then
    shopESP()
end

ESPTab:CreateToggle({
    Name = "Shop ESP",
    CurrentValue = config.shopzESP,
    Callback = function(value)
        config.shopzESP = value
        saveConfig()
        if value then
            shopESP()
        else
            for i,entity in pairs(shops) do
                entity.ESPObject["BillboardGui"]:Destroy()
                table.remove(shops, table.find(shops, entity))
                entity = nil
            end
        end

    end
})

-- Credits
local CreditsTab = Window:CreateTab("Credits")
CreditsTab:CreateParagraph({
    Title = "Credits", 
    Content = "Made by membuffer. Thanks to creators of Rayfield for the graphical interface.\nBuild 2/2/2025"
})
