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
if getgenv().syn then
local syn = getgenv().syn
getgenv().syn = false
end
toclipboard(https://www.dsc.gg/nyx-hub) -- or use dsc.gg/hyperscript
-- games
local PlaceId = game.PlaceId
if PlaceId == 13772394625 then -- Blade ball
    repeat wait() until game:IsLoaded()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/2133121233/Hyper_Hub/main/bladeballfix.lua"))()
elseif PlaceId == 16281300371 then -- Vazio
    loadstring(game:HttpGet("a"))()
elseif PlaceId == 2753915549 then -- Blox s1
    repeat wait() until game:IsLoaded()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/NYX8HUB/premium/refs/heads/main/script"))()
elseif PlaceId == 4442272183 then -- Blox s2
    repeat wait() until game:IsLoaded()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/NYX8HUB/premium/refs/heads/main/script"))()
elseif PlaceId == 7449423635 then -- Blox s3
    repeat wait() until game:IsLoaded()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/NYX8HUB/premium/refs/heads/main/script"))()
end
game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "Nyx Hub X Hyper Hub", -- Required
	Text = "Thx Trigon"
})
if getgenv().syn then
getgenv().syn = syn
end
