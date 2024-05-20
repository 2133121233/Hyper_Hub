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
-- Ant afk
    game:GetService("Players").LocalPlayer.Idled:connect(function()
		game:GetService("VirtualUser"):Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
		wait(1)
		game:GetService("VirtualUser"):Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
	end)
  print("ant afk")
-- Ant kick/ban
local plr = game:GetService("Players").LocalPlayer

getgenv().Anti = true -- Re-Execute

local Anti
Anti = hookmetamethod(game, "__namecall", function(self, ...)
        if self == plr and getnamecallmethod():lower() == "kick" and getgenv().Anti then
            return warn("[ANTI-KICK] !!!")
        end
        return Anti(self, ...)
    end)
  print("ant kick")
-- games
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
elseif PlaceId == 5210095481 then -- Vazio
    loadstring(game:HttpGet("a"))()
end
-- print placeid
print(PlaceId)
