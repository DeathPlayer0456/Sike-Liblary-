local SikeHub = loadstring(game:HttpGet("https://raw.githubusercontent.com/DeathPlayer0456/Sike-Liblary-/refs/heads/main/Sike!%20Liblary.lua"))()

-- Adding Button DNS
SikeHub:CreateButton("Click Me", function()
	print("Button clicked!")
end)

-- Adding Toggle or Loops DNS
SikeHub:CreateToggle("Inf Money", function(state)
	if state then
		task.spawn(function()
			while state do
				local args = {9999999}
				game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("GiveMoneyEvent"):FireServer(unpack(args))
				task.wait(0.1)
			end
		end)
	end
end)

print("Welcome to Sike!")
