--NOT WORKING
game.Players.PlayerAdded:Connect(function(player)
	local char = player.CharacterAdded:Wait()
	local playerTableX = {}
	local playerTableZ = {}
	local currentPos;
	if char.PrimaryPart then
		char.PrimaryPart:GetPropertyChangedSignal("Position"):Connect(function()
			pcall(function() 
				if currentPos then
					local xDiff = math.abs(char.PrimaryPart.Position.X - currentPos.X)
					local zDiff = math.abs(char.PrimaryPart.Position.Z - currentPos.Z)
					--print("xdiff: "..xDiff) -- DEBUG
					--print("zdiff: "..zDiff) -- DEBUG
					table.insert(playerTableX,xDiff) -- This will kill the game very quick, I don't know what this is supposed to do, so I won't touch it.
					table.insert(playerTableZ,zDiff) 
				end
			end)
			pcall(function()
				currentPos = char.PrimaryPart.Position;
			end)
		end)
	end
end)
