--This client-side anti-cheat component requires on security by obscurity and is therefore HEAVILY insecure
--However, it *might* work in SOME very specific cases if the exploiter doesn't notice it's existence.
--this is NOT THE PRIMARY COMPONENT OF THE ANTICHEAT
game.Players.PlayerAdded:Wait()
game.Players.LocalPlayer.Character.Humanoid.Changed:Connect(function()
	game.ReplicatedStorage.event_121134:FireServer(game.Players.LocalPlayer.Character.Humanoid.WalkSpeed)
	game.ReplicatedStorage.event_121134:FireServer(game.Players.LocalPlayer.Character.Humanoid.WalkSpeed,"SECRETCODEGENERATEAGUIDANDPUTITHERE")
end)
