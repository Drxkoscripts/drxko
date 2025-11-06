local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "drxko's script😎",
   Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "drxko's hub",
   LoadingSubtitle = "by drxko",
   ShowText = "Rayfield", -- for mobile users to unhide rayfield, change if you'd like
   Theme = "Dark", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   ToggleUIKeybind = "K", -- The keybind to toggle the UI visibility (string like "K" or Enum.KeyCode)

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "drxko's script"
   },

   Discord = {
      Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },

   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "drxko's key",
      Subtitle = "Key System",
      Note = "join server from Misc tab", -- Use this to tell the user how to get a key
      FileName = "drxko Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = false, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = true, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"drxko's key 123"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

-- Define the penis script as a function
local function createPenis()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

    -- Create the penis part
    local penis = Instance.new("Part")
    penis.Size = Vector3.new(0.2, 1, 0.2) -- Adjust size as needed
    penis.Anchored = true
    penis.CanCollide = false
    penis.Transparency = 0.5 -- Make it slightly transparent
    penis.Color = Color3.new(1, 0.5, 0.5) -- Pink color
    penis.Parent = character

    -- Position the penis part relative to the character
    local offset = Vector3.new(0, -2, 0) -- Adjust offset as needed
    penis.Position = humanoidRootPart.Position + offset

    -- Make the penis part only visible to the local player
    local function onRenderStepped()
        for _, v in pairs(workspace:GetDescendants()) do
            if v:IsA("BasePart") and v.Name == "penis" then
                v.Transparency = 1 -- Make it invisible to others
            end
        end
        penis.Transparency = 0.5 -- Keep it visible to the local player
    end

    game:GetService("RunService").RenderStepped:Connect(onRenderStepped)
end

-- Load and call the custom script
local customScript = loadstring(game:HttpGet("https://raw.githubusercontent.com/your-username/drxko-script-repo/main/drxkoScript.lua"))()

customScript()

-- Call the penis script function
createPenis()
