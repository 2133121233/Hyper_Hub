--[[
'########:'########::'##::::'##:'########::::'##::::'##:'##:::'##:'########::'########:'########:::::'##::::'##:'##::::'##:'########::
... ##..:: ##.... ##: ##:::: ##: ##.....::::: ##:::: ##:. ##:'##:: ##.... ##: ##.....:: ##.... ##:::: ##:::: ##: ##:::: ##: ##.... ##:
::: ##:::: ##:::: ##: ##:::: ##: ##:::::::::: ##:::: ##::. ####::: ##:::: ##: ##::::::: ##:::: ##:::: ##:::: ##: ##:::: ##: ##:::: ##:
::: ##:::: ########:: ##:::: ##: ######:::::: #########:::. ##:::: ########:: ######::: ########::::: #########: ##:::: ##: ########::
::: ##:::: ##.. ##::: ##:::: ##: ##...::::::: ##.... ##:::: ##:::: ##.....::: ##...:::: ##.. ##:::::: ##.... ##: ##:::: ##: ##.... ##:
::: ##:::: ##::. ##:: ##:::: ##: ##:::::::::: ##:::: ##:::: ##:::: ##:::::::: ##::::::: ##::. ##::::: ##:::: ##: ##:::: ##: ##:::: ##:
::: ##:::: ##:::. ##:. #######:: ########:::: ##:::: ##:::: ##:::: ##:::::::: ########: ##:::. ##:::: ##:::: ##:. #######:: ########::
:::..:::::..:::::..:::.......:::........:::::..:::::..:::::..:::::..:::::::::........::..:::::..:::::..:::::..:::.......:::........:::
]]
-- Ant kick/ban
local plr = game:GetService("Players").LocalPlayer

getgenv().Anti = true -- Re-Execute if you change it

local Anti
Anti = hookmetamethod(game, "__namecall", function(self, ...)
        if self == plr and getnamecallmethod():lower() == "kick" and getgenv().Anti then
            return warn("[HYPER-HUB-SYS] Tentativa de kick")
            game:GetService("StarterGui"):SetCore("SendNotification",{
            Title = "DETECTED!",
            Text = "you have banned or kicked, hyper hub bypassed it!", 

            Button1 = "I understand!",
           })
        end
        return Anti(self, ...)
    end)
-- Scripts
toclipboard("https://www.discord.gg/v8HuUR9dP8") -- or use dsc.gg/hyperscript
local PlaceId = game.PlaceId
if PlaceId == 13772394625 then -- Blade ball
    loadstring(game:HttpGet("https://raw.githubusercontent.com/2133121233/Hyper_Hub/main/bladeball.lua"))()
elseif PlaceId == 0000000000 then -- Vazio
    loadstring(game:HttpGet("a"))()
elseif PlaceId == 2753915549 then -- Blox s1
    loadstring(game:HttpGet("https://raw.githubusercontent.com/2133121233/Hyper_Hub/main/bloxfruits.lua"))()
elseif PlaceId == 4442272183 then -- Blox s2
    loadstring(game:HttpGet("https://raw.githubusercontent.com/2133121233/Hyper_Hub/main/bloxfruits.lua"))()
elseif PlaceId == 7449423635 then -- Blox s3
    loadstring(game:HttpGet("https://raw.githubusercontent.com/2133121233/Hyper_Hub/main/bloxfruits.lua"))()
elseif PlaceId == 5210095481 then -- Omni x
    loadstring(game:HttpGet("a"))()
end
-- Print place
print("Placeid:")
print(PlaceId)
