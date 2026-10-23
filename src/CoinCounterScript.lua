-- Coin Counter Script for Roblox

local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

-- Create a ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "CoinCounter"
screenGui.Parent = playerGui

-- Create a TextLabel
local textLabel = Instance.new("TextLabel")
textLabel.Name = "CoinLabel"
textLabel.Size = UDim2.new(0, 200, 0, 50)
textLabel.Position = UDim2.new(0.5, -100, 0, 10)
textLabel.Text = "Coins: 0"
textLabel.TextColor3 = Color3.new(1, 1, 1)
textLabel.BackgroundColor3 = Color3.new(0, 0, 0)
textLabel.Parent = screenGui

-- Function to update the coin count
local function updateCoinCount(coins)
    textLabel.Text = "Coins: " .. coins
end

-- Example: Update the coin count when the player collects a coin
-- This is just an example, you'll need to replace it with your actual logic
game.ReplicatedStorage:WaitForChild("CoinCollected").OnClientEvent:Connect(function(coins)
    updateCoinCount(coins)
end)