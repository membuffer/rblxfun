local buildDate = "1/27/2025"
local membuffer_scripts = {
    baseURL = "https://raw.githubusercontent.com/membuffer/rblxfun/refs/heads/main/",
    scriptFolder = "scripts/",

    availableScripts = {
        ["Fisch"] = "fisch",
        ["Gunfight Arena"] = "gunfightarena.lua",
        ["Jujutsu Infinite"] = "jujutsuinfinite.lua",
        ["Pressure"] = "pressure.lua",
        ["Regretevator"] = "regretevator.lua"
    }

}

function membuffer_scripts:Load(scriptName)
    loadstring(game:HttpGet(scriptName))()
end

local memAssets = {
    ["logo"] = {
        resourceURL = "https://github.com/membuffer/rblxfun/blob/main/libs/menu_logo.png?raw=true",
        filename = "logo.png"
    },
    ["banner"] = {
        resourceURL = "https://github.com/membuffer/rblxfun/blob/main/libs/membuf.png?raw=true",
        filename = "membufferbanner.png"
    }
}
if not isfolder("membuffer") then
    makefolder("membuffer")
end
if not isfolder("membuffer/assets") then
    makefolder("membuffer/assets")
end
function memAssets:fetch(resourceName)
    if not isfile("membuffer/assets/" .. memAssets[resourceName].filename) then
        writefile("membuffer/assets/" .. memAssets[resourceName].filename, game:HttpGet(memAssets[resourceName].resourceURL))
    end
    return getcustomasset("membuffer/assets/" .. memAssets[resourceName].filename)
end

local Rayfield = loadstring(game:HttpGet("https://raw.githubusercontent.com/membuffer/rblxfun/refs/heads/main/libs/rayfield_fork.lua"))()

local Window = Rayfield:CreateWindow({
    Name = "membuffer Menu",
    LoadingTitle = "membuffer Menu",
    LoadingSubtitle = "Going into Greatness."
})
local Tab = Window:CreateTab("Home")

Tab:CreateImage(memAssets:fetch("banner"), 60)
Tab:CreateParagraph({
    Title = "Membuffer Menu",
    Content = "Thank you for using my menu! This menu will receive updates time to time, allowing you to give yourself an advantage in games.\n\nThanks to the developers of Rayfield for developing this graphical interface! Without them, I would not have been able to create this menu in the first place.\nThanks to Valip for helping me out with some coding.\n\nHappy exploiting!\nMain Menu Build: ".. buildDate
})

-- Games
local GameTab = Window:CreateTab("Games")
for name,url in pairs(membuffer_scripts["availableScripts"]) do
    GameTab:CreateButton({
        Name = name,
        Callback = function ()
            Rayfield:Destroy()
            membuffer_scripts:Load(membuffer_scripts.baseURL .. membuffer_scripts.scriptFolder .. url)

        end
    })
end
-- Toolbox
local Toolbox = Window:CreateTab("Toolbox")

Toolbox:CreateButton({
    Name = "Dex",
    Callback = function ()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/main/dex.lua"))()
    end
    
})
Toolbox:CreateButton({
    Name = "Infinite Yield",
    Callback = function ()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
    end
    
})
