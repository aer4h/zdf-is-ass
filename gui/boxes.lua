local CoreGui = game:GetService("StarterGui")

CoreGui:SetCore("SendNotification", {
	Title = "Box";
	Duration = 5;
})

-- Function to create a box outline around a player's character
local function createBoxOutline(player)
    local character = player.Character
    if character then
        local rootPart = character:FindFirstChild("HumanoidRootPart")
        local head = character:FindFirstChild("Head")
        if rootPart and head then
            local boxOutline = Instance.new("SelectionBox")
            boxOutline.Color3 = Color3.new(0, 0, 0) -- Black color
            boxOutline.LineThickness = 0.05 -- Adjust thickness as needed
            boxOutline.Adornee = character
            boxOutline.Archivable = false
            boxOutline.Parent = character
        end
    end
end

-- Function to remove the box outline around a player's character
local function removeBoxOutline(player)
    local character = player.Character
    if character then
        for _, descendant in ipairs(character:GetDescendants()) do
            if descendant:IsA("SelectionBox") then
                descendant:Destroy()
            end
        end
    end
end

-- Function to create box outlines for other players
local function createBoxOutlinesForOtherPlayers()
    local localPlayer = game.Players.LocalPlayer
    for _, player in ipairs(game.Players:GetPlayers()) do
        if player ~= localPlayer then
            createBoxOutline(player)
        end
    end
end

-- Function to remove all existing box outlines and create new ones for other players
local function updateBoxOutlines()
    local localPlayer = game.Players.LocalPlayer
    for _, player in ipairs(game.Players:GetPlayers()) do
        if player ~= localPlayer then
            removeBoxOutline(player)
            createBoxOutline(player)
        end
    end
end

-- Connect the functions to player events
game.Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function(character)
        wait(1) -- Wait for character to load
        createBoxOutline(player)
    end)
end)

game.Players.PlayerRemoving:Connect(function(player)
    removeBoxOutline(player)
end)

-- Initial setup
createBoxOutlinesForOtherPlayers()

-- Continuously update the box outlines for other players
while true do
    updateBoxOutlines()
    wait(1) -- Adjust the interval as needed
end
