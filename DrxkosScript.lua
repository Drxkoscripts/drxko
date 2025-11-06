-- Delta Executor Lua Script for Speed Boost and Grapple Hook Detection

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

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

-- Connect the boost function to the boost button
game:GetService("UserInputService").InputBegan:Connect(function(input, gameProcessed)
    if not gameProcessed then
        if input.KeyCode == Enum.KeyCode.Q then  -- Changed to 'Q' key
            boostSpeed()
            pullGrappleHook()
        end
    end
end)

-- Connect the reset function to the boost button release
game:GetService("UserInputService").InputEnded:Connect(function(input, gameProcessed)
    if not gameProcessed then
        if input.KeyCode == Enum.KeyCode.Q then  -- Changed to 'Q' key
            resetSpeed()
        end
    end
end)
