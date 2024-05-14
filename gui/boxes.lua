-- Create a function to draw a box around a player's character
local function drawBox(player)
    local character = player.Character
    if character then
        local torso = character:FindFirstChild("HumanoidRootPart")
        if torso then
            local box = Instance.new("BoxHandleAdornment")
            box.Adornee = torso
            box.Size = torso.Size + Vector3.new(0.2, 0.2, 0.2) -- Add a little extra to make sure the box fully surrounds the character
            box.Color3 = Color3.fromRGB(255, 0, 0) -- Red color
            box.Transparency = 0.5 -- Semi-transparent
            box.AlwaysOnTop = true
            box.ZIndex = 5
            box.Parent = torso
        end
    end
end

-- Function to remove the box around a player's character
local function removeBox(player)
    local character = player.Character
    if character then
        local box = character:FindFirstChildOfClass("BoxHandleAdornment")
        if box then
            box:Destroy()
        end
    end
end

-- Function to update boxes for all players
local function updateBoxes()
    for _, player in ipairs(game.Players:GetPlayers()) do
        if player ~= game.Players.LocalPlayer then
            if player.Character then
                drawBox(player)
            end
        end
    end
end

-- Connect functions to player events
game.Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function(character)
        drawBox(player)
    end)
end)

game.Players.PlayerRemoving:Connect(function(player)
    removeBox(player)
end)

-- Update boxes periodically
while true do
    updateBoxes()
    wait(1) -- Adjust the interval as needed
end
