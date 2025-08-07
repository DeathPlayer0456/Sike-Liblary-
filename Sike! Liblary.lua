-- SikeHubLib.lua
local SikeHub = {}
local gui = Instance.new("ScreenGui", game.CoreGui)
local frame = Instance.new("Frame", gui)
frame.Size = UDim2.new(0, 180, 0, 80)
frame.Position = UDim2.new(0.5, -90, 0.5, -40)
frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
frame.Active = true
frame.Draggable = true

local title = Instance.new("TextLabel", frame)
title.Size = UDim2.new(1, 0, 0.3, 0)
title.BackgroundTransparency = 1
title.TextColor3 = Color3.fromRGB(255, 0, 0)
title.Font = Enum.Font.SourceSansBold
title.TextScaled = true
title.Text = "SIKE! HUB"

function SikeHub:CreateButton(text, callback)
	local btn = Instance.new("TextButton", frame)
	btn.Size = UDim2.new(1, 0, 0.35, 0)
	btn.Position = UDim2.new(0, 0, 0.3, 0)
	btn.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
	btn.TextColor3 = Color3.fromRGB(255, 255, 255)
	btn.Font = Enum.Font.SourceSans
	btn.TextScaled = true
	btn.Text = text
	btn.MouseButton1Click:Connect(callback)
end

function SikeHub:CreateToggle(text, callback)
	local toggle = Instance.new("TextButton", frame)
	toggle.Size = UDim2.new(1, 0, 0.35, 0)
	toggle.Position = UDim2.new(0, 0, 0.65, 0)
	toggle.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
	toggle.TextColor3 = Color3.fromRGB(255, 255, 255)
	toggle.Font = Enum.Font.SourceSans
	toggle.TextScaled = true
	toggle.Text = text .. ": OFF"

	local enabled = false
	toggle.MouseButton1Click:Connect(function()
		enabled = not enabled
		toggle.Text = text .. ": " .. (enabled and "ON" or "OFF")
		callback(enabled)
	end)
end

return SikeHub
