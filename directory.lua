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

function membuffer_scripts:URLConstructor( scriptRequest )
    local constructedURL = membuffer_scripts.availableScripts

    constructedURL = constructedURL + membuffer_scripts.scriptFolder
    constructedURL = constructedURL + membuffer_scripts.availableScripts[scriptRequest]
    return constructedURL
end

function membuffer_scripts:Load(scriptName)
    local URL = membuffer_scripts:URLConstructor(scriptName)
    loadstring(game:HttpGet(URL))()
end

return membuffer_scripts
