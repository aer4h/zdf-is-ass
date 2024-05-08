local load = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")

load.Name = "load"
load.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
load.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = load
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(-0.153201669, 0, -0.147295743, 0)
Frame.Size = UDim2.new(0, 2147483647, 0, 2147483647)
Frame.ZIndex = 2

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(3.66941094e-07, 0, 2.32364982e-07, 0)
TextLabel.Size = UDim2.new(0, 972, 0, 378)
TextLabel.ZIndex = 3
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "HOL UP LEMME LOAD TS UP!"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

local function GKCNK_fake_script()
	local script = Instance.new('LocalScript', Frame)

	script.Parent.Visible = true
	wait (3)
	script.Parent.Visible = false
end
coroutine.wrap(GKCNK_fake_script)()
