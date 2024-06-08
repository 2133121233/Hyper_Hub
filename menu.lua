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
-- ant afk
    game:GetService("Players").LocalPlayer.Idled:connect(function()
     	game:GetService("VirtualUser"):Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
		wait(1)
		game:GetService("VirtualUser"):Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
	end)
 print("ant afk")
-- copy
toclipboard("https://www.discord.gg/v8HuUR9dP8")-- or use dsc.gg/hyperscript
-- games
local PlaceId = game.PlaceId
if PlaceId == 13772394625 then -- Blade ball
    loadstring(game:HttpGet("https://raw.githubusercontent.com/2133121233/Hyper_Hub/main/bladeballfix.lua"))()
elseif PlaceId == 16281300371 then -- Vazio
    loadstring(game:HttpGet("https://raw.githubusercontent.com/2133121233/Hyper_Hub/main/bladeballfix.lua"))()
elseif PlaceId == 2753915549 then -- Blox s1
    loadstring(game:HttpGet("https://raw.githubusercontent.com/2133121233/Hyper_Hub/main/bloxv2.lua"))()
elseif PlaceId == 4442272183 then -- Blox s2
    loadstring(game:HttpGet("https://raw.githubusercontent.com/2133121233/Hyper_Hub/main/bloxv2.lua"))()
elseif PlaceId == 7449423635 then -- Blox s3
    loadstring(game:HttpGet("https://raw.githubusercontent.com/2133121233/Hyper_Hub/main/bloxv2.lua"))()
elseif PlaceId == 16044264830 then -- Vazio
    loadstring(game:HttpGet("https://raw.githubusercontent.com/2133121233/Hyper_Hub/main/bladeballfix.lua"))()
end
-- print placeid
print(PlaceId)
