local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Drxkos script😎",
   Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "Drxkos hub",
   LoadingSubtitle = "by Drxko",
   ShowText = "Rayfield", -- for mobile users to unhide rayfield, change if you'd like
   Theme = "Dark", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   ToggleUIKeybind = "K", -- The keybind to toggle the UI visibility (string like "K" or Enum.KeyCode)

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "youtube example hub"
   },

   Discord = {
      Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },

   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "drxkos key",
      Subtitle = "Key System",
      Note = "join server from Misc tab", -- Use this to tell the user how to get a key
      FileName = "drxkos Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = false, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = true, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"Drxkos key 123"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

local MainTab = Window:CreateTab("Stealer", nil) -- Title, Image
local MainSection = MainTab:CreateSection("main2")

Rayfield:Notify({
   Title = "Script Executed",
   Content = "Very OP GUI loaded!",
   Duration = 6.5,
   Image = nil,
   Sound = 1, -- 1 for enabled, 0 for disabled
   SoundVolume = 1, -- Volume from 0 to 1
   TextSize = 35, -- Size of the text
   TextColor = Color3.fromRGB(255, 255, 255), -- Text color
   BackgroundColor = Color3.fromRGB(50, 50, 50), -- Background color
   BorderColor = Color3.fromRGB(0, 0, 0), -- Border color
   ButtonColor = Color3.fromRGB(0, 150, 255), -- Button color
})

local function espPlayers()
    local players = game.Players:GetPlayers()
    for _, player in ipairs(players) do
        local character = player.Character or player.CharacterAdded:Wait()
        local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
        if humanoidRootPart then
            local billboardGui = Instance.new("BillboardGui")
            billboardGui.Size = UDim2.new(2, 0, 2, 0)
            billboardGui.AlwaysOnTop = true
            billboardGui.ExtentsOffset = Vector3.new(0, 1.5, 0)
            billboardGui.Parent = humanoidRootPart

            local frame = Instance.new("Frame")
            frame.Size = UDim2.new(1, 0, 1, 0)
            frame.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
            frame.BorderSizePixel = 0
            frame.Parent = billboardGui
        end
    end
end

local function espBestBrainrot()
    local brainrots = workspace:FindFirstChild("Brainrots") -- Adjust this to the correct path
    if brainrots then
        local bestBrainrot = nil
        local highestValue = 0
        for _, brainrot in ipairs(brainrots:GetChildren()) do
            if brainrot:FindFirstChild("Value") then
                local value = brainrot.Value.Value
                if value > highestValue then
                    highestValue = value
                    bestBrainrot = brainrot
                end
            end
        end

        if bestBrainrot then
            local billboardGui = Instance.new("BillboardGui")
            billboardGui.Size = UDim2.new(2, 0, 2, 0)
            billboardGui.AlwaysOnTop = true
            billboardGui.ExtentsOffset = Vector3.new(0, 1.5, 0)
            billboardGui.Parent = bestBrainrot

            local frame = Instance.new("Frame")
            frame.Size = UDim2.new(1, 0, 1, 0)
            frame.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
            frame.BorderSizePixel = 0
            frame.Parent = billboardGui
        end
    end
end

local function displayBaseTimers()
    local players = game.Players:GetPlayers()
    for _, player in ipairs(players) do
        local character = player.Character or player.CharacterAdded:Wait()
        local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
        if humanoidRootPart then
            local billboardGui = Instance.new("BillboardGui")
            billboardGui.Size = UDim2.new(2, 0, 2, 0)
            billboardGui.AlwaysOnTop = true
            billboardGui.ExtentsOffset = Vector3.new(0, 2, 0)
            billboardGui.Parent = humanoidRootPart

            local timerText = Instance.new("TextLabel")
            timerText.Size = UDim2.new(1, 0, 1, 0)
            timerText.BackgroundTransparency = 1
            timerText.TextColor3 = Color3.fromRGB(255, 255, 255)
            timerText.TextScaled = true
            timerText.Text = "Base Timer: " .. tostring(math.floor(player.BaseTimer.Value)) .. "s"
            timerText.Parent = billboardGui
        end
    end
end

local function autoFarm()
    while true do
        -- Implement auto farm logic here
        -- Example: Move to a specific location and collect resources
        local targetPosition = Vector3.new(0, 0, 0) -- Set your target position here
        game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(targetPosition))
        wait(1)
    end
end

local function autoLockBase()
    while true do
        -- Implement auto lock base logic here
        -- Example: Lock the base by interacting with a specific part
        local basePart = workspace:FindFirstChild("BasePart") -- Adjust this to the correct path
        if basePart then
            game.Players.LocalPlayer.Character.Humanoid:MoveTo(basePart.Position)
            wait(1)
            game.ReplicatedStorage.RemoteEvent:FireServer("LockBase")
        end
        wait(5)
    end
end

local function instantSteal()
    -- Implement instant steal logic here
    -- Example: Teleport to a player and steal their items
    local targetPlayer = game.Players:FindFirstChild("TargetPlayerName") -- Replace with the actual target player name
    if targetPlayer then
        local targetCharacter = targetPlayer.Character or targetPlayer.CharacterAdded:Wait()
        game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(targetCharacter.PrimaryPart.CFrame)
        wait(0.5)
        game.ReplicatedStorage.RemoteEvent:FireServer("StealItems", targetPlayer)
    end
end

local function aimbot()
    while true do
        -- Implement aimbot logic here
        -- Example: Always face the closest player
        local closestPlayer = nil
        local shortestDistance = math.huge
        for _, player in ipairs(game.Players:GetPlayers()) do
            if player ~= game.Players.LocalPlayer then
                local distance = (game.Players.LocalPlayer.Character.PrimaryPart.Position - player.Character.PrimaryPart.Position).Magnitude
                if distance < shortestDistance then
                    shortestDistance = distance
                    closestPlayer = player
                end
            end
        end

        if closestPlayer then
            game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(game.Players.LocalPlayer.Character.PrimaryPart.Position, closestPlayer.Character.PrimaryPart.Position))
        end
        wait(0.1)
    end
end

local Button = MainTab:CreateButton({
   Name = "Infinite Jump",
   Callback = function()
      local InfiniteJumpEnabled = true
      game:GetService("UserInputService").JumpRequest:connect(function()
         if InfiniteJumpEnabled then
            game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
         end
      end)
      local InfiniteJump = CreateButton("Infinite Jump: On", StuffFrame)
      InfiniteJump.Position = UDim2.new(0,10,0,130)
      InfiniteJump.Size = UDim2.new(0,150,0,30)
      InfiniteJump.MouseButton1Click:connect(function()
         local state = InfiniteJump.Text:sub(string.len("Infinite Jump: ") + 1) --too lazy to count lol
         local new = state == "Off" and "On" or state == "On" and "Off"
         InfiniteJumpEnabled = new == "On"
         InfiniteJump.Text = "Infinite Jump: " .. new
      end)
   end,
   Style = {
      ButtonColor = Color3.fromRGB(0, 150, 255),
      TextColor = Color3.fromRGB(255, 255, 255),
      TextSize = 24,
      Size = UDim2.new(0, 200, 0, 50),
      Position = UDim2.new(0, 10, 0, 10),
   },
})

local Slider = MainTab:CreateSlider({
   Name = "Walk Speed",
   Range = {0, 300},
   Increment = 1,
   Suffix = "speed",
   CurrentValue = 16,
   Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = (value)
   end,
   Style = {
      SliderColor = Color3.fromRGB(0, 150, 255),
      TextColor = Color3.fromRGB(255, 255, 255),
      TextSize = 24,
      Size = UDim2.new(0, 200, 0, 50),
      Position = UDim2.new(0, 10, 0, 70),
   },
})

local DesyncTab = Window:CreateTab("Desync/Finder", nil) -- Title, Image

local Button = MainTab:CreateButton({
   Name = "Desync Player",
   Callback = function()
      -- The function that takes place when the button is pressed
   end,
   Style = {
      ButtonColor = Color3.fromRGB(0, 150, 255),
      TextColor = Color3.fromRGB(255, 255, 255),
      TextSize = 24,
      Size = UDim2.new(0, 200, 0, 50),
      Position = UDim2.new(0, 10, 0, 130),
   },
})

-- Auto Farm
MainTab:CreateButton({
   Name = "Auto Farm",
   Callback = function()
      autoFarm()
   end,
   Style = {
      ButtonColor = Color3.fromRGB(0, 150, 255),
      TextColor = Color3.fromRGB(255, 255, 255),
      TextSize = 24,
      Size = UDim2.new(0, 200, 0, 50),
      Position = UDim2.new(0, 10, 0, 190),
   },
})

-- Auto Lock Base
MainTab:CreateButton({
   Name = "Auto Lock Base",
   Callback = function()
      autoLockBase()
   end,
   Style = {
      ButtonColor = Color3.fromRGB(0, 150, 255),
      TextColor = Color3.fromRGB(255, 255, 255),
      TextSize = 24,
      Size = UDim2.new(0, 200, 0, 50),
      Position = UDim2.new(0, 10, 0, 250),
   },
})

-- Instant Steal
MainTab:CreateButton({
   Name = "Instant Steal",
   Callback = function()
      instantSteal()
   end,
   Style = {
      ButtonColor = Color3.fromRGB(0, 150, 255),
      TextColor = Color3.fromRGB(255, 255, 255),
      TextSize = 24,
      Size = UDim2.new(0, 200, 0, 50),
      Position = UDim2.new(0, 10, 0, 310),
   },
})

-- NoClip
MainTab:CreateButton({
   Name = "NoClip",
   Callback = function()
      -- NoClip function
      local player = game.Players.LocalPlayer
      local character = player.Character or player.CharacterAdded:Wait()
      local humanoid = character:FindFirstChildOfClass'Humanoid'
      humanoid:ChangeState(Enum.HumanoidStateType.PlatformStanding)
      while true do
         character:SetPrimaryPartCFrame(character.PrimaryPart.CFrame + Vector3.new(0, 1, 0))
         wait()
      end
   end,
   Style = {
      ButtonColor = Color3.fromRGB(0, 150, 255),
      TextColor = Color3.fromRGB(255, 255, 255),
      TextSize = 24,
      Size = UDim2.new(0, 200, 0, 50),
      Position = UDim2.new(0, 10, 0, 370),
   },
})

-- ESP
MainTab:CreateButton({
   Name = "ESP Players",
   Callback = function()
      espPlayers()
   end,
   Style = {
      ButtonColor = Color3.fromRGB(0, 150, 255),
      TextColor = Color3.fromRGB(255, 255, 255),
      TextSize = 24,
      Size = UDim2.new(0, 200, 0, 50),
      Position = UDim2.new(0, 10, 0, 430),
   },
})

MainTab:CreateButton({
   Name = "ESP Best Brainrot",
   Callback = function()
      espBestBrainrot()
   end,
   Style = {
      ButtonColor = Color3.fromRGB(0, 150, 255),
      TextColor = Color3.fromRGB(255, 255, 255),
      TextSize = 24,
      Size = UDim2.new(0, 200, 0, 50),
      Position = UDim2.new(0, 10, 0, 490),
   },
})

MainTab:CreateButton({
   Name = "Base Timers",
   Callback = function()
      displayBaseTimers()
   end,
   Style = {
      ButtonColor = Color3.fromRGB(0, 150, 255),
      TextColor = Color3.fromRGB(255, 255, 255),
      TextSize = 24,
      Size = UDim2.new(0, 200, 0, 50),
      Position = UDim2.new(0, 10, 0, 550),
   },
})

-- Auto Buy
MainTab:CreateButton({
   Name = "Auto Buy",
   Callback = function()
      -- Auto buy function
      -- Implement auto buy logic here
   end,
   Style = {
      ButtonColor = Color3.fromRGB(0, 150, 255),
      TextColor = Color3.fromRGB(255, 255, 255),
      TextSize = 24,
      Size = UDim2.new(0, 200, 0, 50),
      Position = UDim2.new(0, 10, 0, 610),
   },
})

-- Speed Boost
MainTab:CreateSlider({
   Name = "Speed Boost",
   Range = {16, 100},
   Increment = 1,
   Suffix = "speed",
   CurrentValue = 16,
   Flag = "SpeedBoostSlider",
   Callback = function(Value)
      game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
   end,
   Style = {
      SliderColor = Color3.fromRGB(0, 150, 255),
      TextColor = Color3.fromRGB(255, 255, 255),
      TextSize = 24,
      Size = UDim2.new(0, 200, 0, 50),
      Position = UDim2.new(0, 10, 0, 670),
   },
})

-- Teleport
MainTab:CreateButton({
   Name = "Teleport",
   Callback = function()
      -- Teleport function
      local player = game.Players.LocalPlayer
      local targetPosition = Vector3.new(0, 0, 0) -- Set your target position here
      player.Character:SetPrimaryPartCFrame(CFrame.new(targetPosition))
   end,
   Style = {
      ButtonColor = Color3.fromRGB(0, 150, 255),
      TextColor = Color3.fromRGB(255, 255, 255),
      TextSize = 24,
      Size = UDim2.new(0, 200, 0, 50),
      Position = UDim2.new(0, 10, 0, 730),
   },
})

-- Aimbot
MainTab:CreateButton({
   Name = "Aimbot",
   Callback = function()
      aimbot()
   end,
   Style = {
      ButtonColor = Color3.fromRGB(0, 150, 255),
      TextColor = Color3.fromRGB(255, 255, 255),
      TextSize = 24,
      Size = UDim2.new(0, 200, 0, 50),
      Position = UDim2.new(0, 10, 0, 790),
   },
})

-- Fly
MainTab:CreateButton({
   Name = "Fly",
   Callback = function()
      -- Fly function
      local player = game.Players.LocalPlayer
      local character = player.Character or player.CharacterAdded:Wait()
      local humanoid = character:FindFirstChildOfClass'Humanoid'
      humanoid:ChangeState(Enum.HumanoidStateType.PlatformStanding)
      local bodyVelocity = Instance.new("BodyVelocity")
      bodyVelocity.Velocity = Vector3.new(0, 0, 0)
      bodyVelocity.MaxForce = Vector3.new(4000, 4000, 4000)
      bodyVelocity.Parent = character.PrimaryPart
      while true do
         bodyVelocity.Velocity = Vector3.new(0, 50, 0) -- Adjust the velocity as needed
         wait()
      end
   end,
   Style = {
      ButtonColor = Color3.fromRGB(0, 150, 255),
      TextColor = Color3.fromRGB(255, 255, 255),
      TextSize = 24,
      Size = UDim2.new(0, 200, 0, 50),
      Position = UDim2.new(0, 10, 0, 850),
   },
})

-- End of the script
