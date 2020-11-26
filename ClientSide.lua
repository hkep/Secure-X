--[[
HIGHLY RECCOMENDED THAT YOU NAME THIS SOMETHIHNG TO BLEND IN, SO THE EXPLOITER TARGET AND DELETE THE SCRIPT BEFORE EXECUTING OTHER HACKS.
Client side Squirrel Plus
hopefully, the cheater either A:
gets banned before they can delete this
or B:
doesn't notice it.]]
wait(0.25)
game.Players.LocalPlayer.Character.Humanoid.Changed:Connect(function()
	game.ReplicatedStorage.event_121134:FireServer(game.Players.LocalPlayer.Character.Humanoid.WalkSpeed)
end)
