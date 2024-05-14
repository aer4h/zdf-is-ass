local CoreGui = game:GetService("StarterGui")

CoreGui:SetCore("SendNotification", {
	Title = "CTRL To TP";
	Text = "Keybind: CTRL";
	Duration = 5;
})

local Plr = game:GetService("Players").LocalPlayer
local Mouse = Plr:GetMouse()

Mouse.Button1Down:connect(
	function()
		if not game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.LeftControl) then
			return
		end
		if not Mouse.Target then
			return
		end
		Plr.Character:MoveTo(Mouse.Hit.p)
	end
)
