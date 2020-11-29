--This client-side anti-cheat component requires on security by obscurity and is therefore HEAVILY insecure
--However, it *might* work in SOME very specific cases if the exploiter doesn't notice it's existence.
--this is NOT THE PRIMARY COMPONENT OF THE ANTICHEAT
playerservice = game:GetService("Players")
playerservice.PlayerAdded:Wait()
playerservice.LocalPlayer.Character.Humanoid.Changed:Connect(function()
	local event = game:GetService("ReplicatedStorage"):FindFirstChild("event_121134")
	if event then
		event:FireServer(playerservice.LocalPlayer.Character.Humanoid.WalkSpeed,"SECRETCODEGENERATEAGUIDANDPUTITHERE")
	end
end)
