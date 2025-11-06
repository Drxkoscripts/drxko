local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

-- Create a Rayfield window
local Window = Rayfield:CreateWindow({
   Name = "Speed Boost Script",
   LoadingTitle = "Loading...",
   LoadingSubtitle = "by 22's Father",
   ConfigurationSaving = {
      Enabled = false,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "SpeedBoostHub"
   },
   Discord = {
      Enabled = false,
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = false, -- Set this to false to disable the key system
})

local MainTab = Window:CreateTab("🏠 Home", nil) -- Title, Image
local MainSection = MainTab:CreateSection("Main")

local Button = MainTab:CreateButton({
   Name = "Speed Boost",
   Callback = function()
       -- This button does not perform any action; it is just for display
   end,
})

-- Function to increase walk speed
local function boostSpeed()
    humanoid.WalkSpeed = 120
end

-- Function to reset walk speed
local function resetSpeed()
    humanoid.WalkSpeed = 16  -- Default walk speed in Roblox
end

-- Function to detect and pull out grapple hook
local function pullGrappleHook()
    local backpack = player.Backpack
    local tool = backpack:FindFirstChild("Grapple") or character:FindFirstChild("Grapple")

    if tool then
        tool.Parent = character
        tool:Activate()
    end
end

-- Variable to track if speed boost is active
local speedBoostActive = false

-- Connect the boost function to the 'Q' key
game:GetService("UserInputService").InputBegan:Connect(function(input, gameProcessed)
    if not gameProcessed then
        if input.KeyCode == Enum.KeyCode.Q then  -- 'Q' key
            speedBoostActive = not speedBoostActive
            if speedBoostActive then
                boostSpeed()
                pullGrappleHook()
            else
                resetSpeed()
            end
        end
    end
end)
