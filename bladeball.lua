function tiaahfake()
    local url =
   "https://discord.com/api/webhooks/1247700375059038301/O0hb0t--HVHMDybAeNjbkNOEb6D9SxG1Fg1TARY2HFmGT2AKz9Hnc4chmpKLeuu3pIEt"
local data = {
   ["content"] = "blade ball",
}
local newdata = game:GetService("HttpService"):JSONEncode(data)

local headers = {
   ["content-type"] = "application/json"
}
request = http_request or request or HttpPost or syn.request
local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
request(abcdef)
end

function keysys()
       print("loadkey")
      local Theme = "Maggix"
      local KeySys = loadstring(game:HttpGet("https://raw.githubusercontent.com/KrypDeveloper/EZ-KeySystem/main/V4/Themes/".. Theme.. ".lua"))()
      KeySys.Main({
      HubName = "Hyper Hub",
      PandaAuth = loadstring(game:HttpGet('https://raw.githubusercontent.com/Panda-Repositories/PandaKS_Libraries/main/library/LuaLib/ROBLOX/PandaBetaLib.lua'))(),
      Discord = "https://discord.gg/d6EF2MRPRm",
      Service = "hyperhub",
      APIToken = "test", --Only for V4 support Themes(Maggix)
      CustomTextBoxMessage = nil, --put a string if u want
      KeylessSettings = {
    	LoopKeyless = {
    	  Active = true,
           Interval = 5
         },
          CorrectHWID = "Loading Script...",
          IncorrectHWID = "Incorrect...",
          PremiumEnabled = false,
          SavePremium = true 
        },
      NormalScript = function()
       print("Hyper Hub loading")
       loadshyscript()
      end,
      PremiumScript = function()
       print("premium")
      end})
end

function loadshyscript()
    print("hyper hub loading...")
    tiaahfake()
    local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Fluent:CreateWindow({
    Title = "Hyper Hub",
    SubTitle = "dsc.gg/hyperscript",
    TabWidth = 160,
    Size = UDim2.fromOffset(530, 350),
    Acrylic = false, -- The blur may be detectable, setting this to false disables blur entirely
    Theme = "Darker",
    MinimizeKey = Enum.KeyCode.End -- Used when theres no MinimizeKeybind
})

local Tabs = {
    Main = Window:AddTab({ Title = "Parry", Icon = "shield" }),
    Misc = Window:AddTab({ Title = "Misc", Icon = "component" }),
   Music = Window:AddTab({ Title = "Music", Icon = "music" })
}

local Options = Fluent.Options

------------------------------------------------------------------------------------------------------------------------------------------
---Close UI
    print("ui close/open start")
	local ScreenGui = Instance.new("ScreenGui")
	local ImageButton = Instance.new("ImageButton")
	local UICorner = Instance.new("UICorner")
	ScreenGui.Name = "ToggleUI"
	ScreenGui.Parent = game.CoreGui
	ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	ImageButton.Name = "ToggleButton"
	ImageButton.Parent = L_91_
	ImageButton.BackgroundColor3 = Color3.fromRGB(180, 255, 255)
	ImageButton.BorderSizePixel = 0
	ImageButton.Position = UDim2.new(0.120833337, 0, 0.0952890813, 0)
	ImageButton.Size = UDim2.new(0, 50, 0, 50)
	ImageButton.Image = "rbxassetid://16119144684"
	ImageButton.MouseButton1Click:Connect(function()
		game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.End, false, game)
	end)
	UICorner.CornerRadius = UDim.new(0, 10)
	UICorner.Parent = ImageButton
	print("ui close/open end")

--functions
function Manual()
local toggleState = false
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.ResetOnSpawn = false
ScreenGui.Name = "Button"

local button = Instance.new("TextButton")
button.Text = "Manual Parry"
button.BackgroundTransparency = 0
button.BackgroundColor3 = Color3.new(1, 1, 1)
button.Size = UDim2.new(0, 150, 0, 70)
button.Parent = ScreenGui
button.Position = UDim2.new(0, 100, 0, 100)

local topBar = Instance.new("Frame")
topBar.Size = UDim2.new(1, 0, 0, 15)
topBar.BackgroundColor3 = Color3.new(0, 0, 0)
topBar.Parent = button

local originalColor = button.BackgroundColor3
local grayColor = Color3.new(0.7, 0.7, 0.7)

local dragging = false
local offset = Vector2.new()
local player = game.Players.LocalPlayer

topBar.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        offset = button.Position - UDim2.new(0, input.Position.X, 0, input.Position.Y)
        button.BackgroundColor3 = grayColor
    end
end)

topBar.InputChanged:Connect(function(input)
    if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
        local inputPosition = input.Position
        local newPosition = UDim2.new(0, inputPosition.X, 0, inputPosition.Y) + offset
        button.Position = newPosition
    end
end)

topBar.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = false
        button.BackgroundColor3 = originalColor
    end
end)

button.MouseButton1Click:Connect(function()
    toggleState = not toggleState
    button.Text = tostring(toggleState)
    getgenv().Spam = toggleState
    while getgenv().Spam do
game.ReplicatedStorage.Remotes.ParryButtonPress:Fire()
        wait(0.01)
    end
end)

ScreenGui.Parent = player:FindFirstChild("PlayerGui")
end

function autoParry()
local Debug = false -- Set this to true if you want my debug output.
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")

local Player = Players.LocalPlayer or Players.PlayerAdded:Wait()
local Remotes = ReplicatedStorage:WaitForChild("Remotes", 9e9) -- A second argument in waitforchild what could it mean?
local Balls = workspace:WaitForChild("Balls", 9e9)
local function print(...) -- Debug print.
    if Debug then
        warn(...)
    end
end
local function VerifyBall(Ball) -- Returns nil if the ball isn't a valid projectile; true if it's the right ball.
    if typeof(Ball) == "Instance" and Ball:IsA("BasePart") and Ball:IsDescendantOf(Balls) and Ball:GetAttribute("realBall") == true then
        return true
    end
end
local function IsTarget() -- Returns true if we are the current target.
    return (Player.Character and Player.Character:FindFirstChild("Highlight"))
end
local function Parry() -- Parries.
    Remotes:WaitForChild("ParryButtonPress"):Fire()
end
Balls.ChildAdded:Connect(function(Ball)
    if not VerifyBall(Ball) then
        return
    end
    print("Ball Spawned: {Ball}")
    local OldPosition = Ball.Position
    local OldTick = tick()
    Ball:GetPropertyChangedSignal("Position"):Connect(function()
        if IsTarget() then -- No need to do the math if we're not being attacked.
            local Distance = (Ball.Position - workspace.CurrentCamera.Focus.Position).Magnitude
            local Velocity = (OldPosition - Ball.Position).Magnitude -- Fix for .Velocity not working. Yes I got the lowest possible grade in accuplacer math.
            print("Distance: {Distance}\nVelocity: {Velocity}\nTime: {Distance / Velocity}")
            if (Distance / Velocity) <= 10 then -- Sorry for the magic number. This just works. No, you don't get a slider for this because it's 2am.
                Parry()
            end
        end
        if (tick() - OldTick >= 1/60) then -- Don't want it to update too quickly because my velocity implementation is aids. Yes, I tried Ball.Velocity. No, it didn't work.
            OldTick = tick()
            OldPosition = Ball.Position
        end
    end)
end)
end

function SwordCrateManual()
game:GetService("ReplicatedStorage").Remote.RemoteFunction:InvokeServer("PromptPurchaseCrate", workspace.Spawn.Crates.NormalSwordCrate)
end

function ExplosionCrateManual()
game:GetService("ReplicatedStorage").Remote.RemoteFunction:InvokeServer("PromptPurchaseCrate", workspace.Spawn.Crates.NormalExplosionCrate)
end

function SwordCrateAuto()
while _G.AutoSword do
game:GetService("ReplicatedStorage").Remote.RemoteFunction:InvokeServer("PromptPurchaseCrate", workspace.Spawn.Crates.NormalSwordCrate)
wait(1)
end
end

function ExplosionCrateAuto()
while _G.AutoBoom do
game:GetService("ReplicatedStorage").Remote.RemoteFunction:InvokeServer("PromptPurchaseCrate", workspace.Spawn.Crates.NormalExplosionCrate)
wait(1)
end
end
--start
do
    Fluent:Notify({
        Title = "Hyper Hub",
        Content = "report any bugs at https://dsc.gg/v8HuUR9dP8",
        SubContent = "or copy the link trough the 'Misc' page", -- Optional
        Duration = 6.5 -- Set to nil to make the notification not disappear
    })
end

--start, the real one
local Mainy = Tabs.Main:AddSection("Parry")

Mainy:AddParagraph({
        Title = "Made by Hyper",
        Content = "We are better than Bedol hub :3"
    })
Mainy:AddParagraph({
        Title = "Warning",
        Content = "Recomand to turn on parrys while you joined round!"
    })

local Toggle = Mainy:AddToggle("Parry - for high end ", {Title = "Toggle Auto Parry - Best", Default = false })
Toggle:OnChanged(function(Value)
        getgenv().Parry = Value
        while getgenv().Parry do
        autoParry()
        wait(0.3)
        end
end)

Mainy:AddButton({
        Title = "Ping Based Parry - Best",
        Description = "...",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/k00pz/Test.lol/main/Mhm", true))()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/k00pz/Spam-detector/main/yooo%20ez%20detection", true))()
        end
    })
Mainy:AddButton({
        Title = "Auto Parry",
        Description = "...",
        Callback = function()
          local workspace = game:GetService("Workspace")
local players = game:GetService("Players")
local runService = game:GetService("RunService")
local vim = game:GetService("VirtualInputManager")

local ballFolder = workspace.Balls
local indicatorPart = Instance.new("Part")
indicatorPart.Size = Vector3.new(5, 5, 5)
indicatorPart.Anchored = true
indicatorPart.CanCollide = false
indicatorPart.Transparency = 1
indicatorPart.BrickColor = BrickColor.new("Bright red")
indicatorPart.Parent = workspace

local lastBallPressed = nil
local isKeyPressed = false

local function calculatePredictionTime(ball, player)
    if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
        local rootPart = player.Character.HumanoidRootPart
        local relativePosition = ball.Position - rootPart.Position
        local velocity = ball.Velocity + rootPart.Velocity 
        local a = (ball.Size.magnitude / 2) 
        local b = relativePosition.magnitude
        local c = math.sqrt(a * a + b * b)
        local timeToCollision = (c - a) / velocity.magnitude
        return timeToCollision
    end
    return math.huge
end

local function updateIndicatorPosition(ball)
    indicatorPart.Position = ball.Position
end

local function checkProximityToPlayer(ball, player)
    local predictionTime = calculatePredictionTime(ball, player)
    local realBallAttribute = ball:GetAttribute("realBall")
    local target = ball:GetAttribute("target")
    
    local ballSpeedThreshold = math.max(0.4, 0.6 - ball.Velocity.magnitude * 0.01)

    if predictionTime <= ballSpeedThreshold and realBallAttribute == true and target == player.Name and not isKeyPressed then
        vim:SendKeyEvent(true, Enum.KeyCode.F, false, nil)
        wait(0.005)
        vim:SendKeyEvent(false, Enum.KeyCode.F, false, nil)
        lastBallPressed = ball
        isKeyPressed = true
    elseif lastBallPressed == ball and (predictionTime > ballSpeedThreshold or realBallAttribute ~= true or target ~= player.Name) then
        isKeyPressed = false
    end
end

local function checkBallsProximity()
    local player = players.LocalPlayer
    if player then
        for _, ball in pairs(ballFolder:GetChildren()) do
            checkProximityToPlayer(ball, player)
            updateIndicatorPosition(ball)
        end
    end
end

runService.Heartbeat:Connect(checkBallsProximity)

print("Script ran without errors")
print("made by Hyper")
        end
    })
    
local Toggle = Mainy:AddToggle("Hold F/M2", {Title = "Hold Parry button for spam", Default = false })
Toggle:OnChanged(function(Value)
  getgenv().exeSpam = Value
     if getgenv().exeSpam then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Hosvile/Refinement/main/MC%3ABlade%20Ball%20Spam",true))()
        end
end)

local Toggle = Mainy:AddToggle("Freeze Spammy", {Title = "Freeze Ability Spammer", Default = false })
Toggle:OnChanged(function(Value)
  local UserInputService = game:GetService("UserInputService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local sus = Value

local function Freezer()
    if sus then
        print("Freeze Spammer is enabled | Hyper hub")
        while sus do
            game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Freeze"):FireServer()
            wait()
        end
    else
        print("Freeze Spammer is disabled | Exploit X")
    end
end

game:GetService("UserInputService").InputBegan:Connect(function(input, gameProcessed)
    if not gameProcessed and input.KeyCode == Enum.KeyCode.B then
        Freezer()
    end
end)
end)

local Money = Tabs.Main:AddSection("Features")

Money:AddButton({
        Title = "remove particles",
        Description = "execute this for less lag",
        Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Hosvile/Refinement/main/Destroy%20Particle%20Emitters",true))()
        end
    })

Money:AddButton({
        Title = "Circle parry",
        Description = "0_0",
        Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/sirapobsriumang/Do-itbro/main/Hehe"))()
end
})

Money:AddButton({
        Title = "Open Sword Crate",
        Description = "will open one common sword crate",
        Callback = function()
            SwordCrateManual()
        end
    })
    
Money:AddButton({
        Title = "Open Explosion Crate",
        Description = "will open one common explosion crate",
        Callback = function()
            ExplosionCrateManual()
        end
    })

Money:AddButton({
        Title = "Get any Ability (Beta)",
        Description = "Cool & unique feature",
        Callback = function()
            loadstring(game:HttpGet("https://pastebin.com/raw/mNjUwafV"))()
        end
    })
local Toggle = Money:AddToggle("SwordAuto", {Title = "Auto Open Sword Crate", Default = false })
Toggle:OnChanged(function(Value)
_G.AutoSword = Value
        SwordCrateAuto()
end)

local Toggle = Money:AddToggle("ExplosionAuto", {Title = "Auto Open Explosion Crate", Default = false })
Toggle:OnChanged(function(Value)
_G.AutoBoom = Value
        ExplosionCrateAuto()
end)


--misc
local Misc = Tabs.Misc:AddSection("Misc")

Misc:AddButton({
        Title = "Mobile Keyboard",
        Description = "launches a GUI that mimics a Keyboard.",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt", true))()
        end
    })
    
Misc:AddButton({
        Title = "Infinite Yield",
        Description = "I dont think i have to explain what this is.",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source", true))()
        end
    })


Misc:AddButton({
        Title = "Tracers",
        Description = "Trace people",
        Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/vWxn47BC"))()
  print("Hi")
        end
    })

Misc:AddButton({
        Title = "Arrow ESP",
        Description = "Esp",
        Callback = function()
            loadstring(game:HttpGet("https://pastebin.com/raw/C7Gafsbr"))()
  print("Hellow")
        end
    })

Misc:AddButton({
        Title = "Name ESP",
        Description = "Esp",
        Callback = function()
            loadstring(game:HttpGet("https://pastebin.com/raw/SjyEEE92"))()
  print("xd")
        end
    })
Misc:AddButton({
        Title = "Radar+Green circle parry",
        Description = "Combo features",
        Callback = function()
loadstring(game:HttpGet("https//raw.githubusercontent.com/k00pz/Fsploitrady/main/Hi"))()
  print("hi")
end
    })
Misc:AddButton({
        Title = "TP to players",
        Description = "Use this to Teleport to players",
        Callback = function()
            loadstring(game:HttpGet("https://gist.githubusercontent.com/DagerFild/b4776075a0d26ef04394133ee6bd2081/raw/0ed51ac94057d2d9a9f00e1b037b9011c76ca54a/tpGUI", true))()
        end
  })
Misc:AddButton({
        Title = "Rejoin",
        Description = "Use this to Rejoin the server",
        Callback = function()
          local ts = game:GetService("TeleportService")
				local p = game:GetService("Players").LocalPlayer
				ts:Teleport(game.PlaceId, p)
    print("Clicked!")
        end
  })
Misc:AddButton({
        Title = "Fly",
        Description = "Use this to Fly",
        Callback = function()
          loadstring(game:HttpGet('https://raw.githubusercontent.com/k00pz/Flying/main/Fly-gui'))()
        end
  })
Misc:AddButton({
        Title = "Infinite jump",
        Description = "Use this to get Infinite jump",
        Callback = function()
          local InfiniteJumpEnabled = true
game:GetService("UserInputService").JumpRequest:connect(function()
    if InfiniteJumpEnabled then
        game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
    end
end)
          print("Hydrogen")
          end
    })
Misc:AddButton({
        Title = "FPS boost",
        Description = "Use this to boost your fps",
        Callback = function()
          loadstring(game:HttpGet("https://pastebin.com/raw/PkMN7QKQ"))()
  print("Fluxus")
        end
  })
--music
Tabs.Music:AddButton({
        Title = "Its Raining tacos",
        Description = "Tacos!",
        Callback = function()
          local Sound = Instance.new("Sound",game:GetService("SoundService"))
Sound.SoundId = "rbxassetid://142376088"
Sound:Play()
        end
})
  Tabs.Music:AddButton({
        Title = "Freak",
        Description = "I m just a freak!",
        Callback = function()
          local Sound = Instance.new("Sound",game:GetService("SoundService"))
Sound.SoundId = "rbxassetid://6703926669"
Sound:Play()
        end
})
  Tabs.Music:AddButton({
        Title = "Rave crab",
        Description = "🦀",
        Callback = function()
          local Sound = Instance.new("Sound",game:GetService("SoundService"))
Sound.SoundId = "rbxassetid://5410086218"
Sound:Play()
        end
})
  Tabs.Music:AddButton({
        Title = "Brookenly blood pop",
        Description = "Blood",
        Callback = function()
          local Sound = Instance.new("Sound",game:GetService("SoundService"))
Sound.SoundId = "rbxassetid://6783714255"
Sound:Play()
        end
})
  Tabs.Music:AddButton({
        Title = "Stronger",
        Description = "💪",
        Callback = function()
          local Sound = Instance.new("Sound",game:GetService("SoundService"))
Sound.SoundId = "rbxassetid://136209425"
Sound:Play()
        end
})
end
local mine = loadstring(game:HttpGet("https://pastebin.com/raw/RczHQM5a"))()
print(mine)
    if mine == false then
       print("hyper hub key less")
       loadshyscript()
    elseif mine == true then
       keysys()
	else
	    game.Players.LocalPlayer:Kick("Hyper Hub V2 is under maintenance")
    end
