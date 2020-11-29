--NOT WORKING
game.Players.PlayerAdded:Connect(function(player)
	local char = player.CharacterAdded:Wait()
	local currentPos;
	if char.PrimaryPart then
		char.PrimaryPart:GetPropertyChangedSignal("Position"):Connect(function()
			pcall(function() 
				if currentPos then
					local xDiff = math.abs(char.PrimaryPart.Position.X - currentPos.X)
					local zDiff = math.abs(char.PrimaryPart.Position.Z - currentPos.Z)
					--print("xdiff: "..xDiff) -- DEBUG
					--print("zdiff: "..zDiff) -- DEBUG
				end
			end)
			pcall(function()
				currentPos = char.PrimaryPart.Position;
			end)
		end)
	end
end)
