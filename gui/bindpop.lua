local bind = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")

bind.Name = "bind"
bind.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
bind.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = bind
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.319569111, 0, 0.495972395, 0)
Frame.Size = UDim2.new(0.501496136, 0, 0.208285391, 0)
Frame.ZIndex = 2

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(-0.015512798, 0, 0.237569392, 0)
TextLabel.Size = UDim2.new(0, 863, 0, 93)
TextLabel.ZIndex = 3
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "THE BIND FOR CAMLOCK IS Z!"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

local function CZNUMJ_fake_script()
	local script = Instance.new('LocalScript', Frame)

	script.Parent.Visible = false
	wait (17)
	script.Parent.Visible = true
	wait (3)
	script.Parent.Visible = false
end
coroutine.wrap(CZNUMJ_fake_script)()
