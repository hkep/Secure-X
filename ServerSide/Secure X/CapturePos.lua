--NOT WORKING
game:GetService("Players").PlayerAdded:Connect(function(player)
	player.CharacterAdded:Wait()
	if player.Character:FindFirstChild("UpperTorso")~=nil then 
		while wait(1) do
			pcall(function() 
		if currentpos ~=nil   then
			local xdiff = math.abs(player.Character.UpperTorso.Position.X - currentpos.X)
			local zdiff = math.abs(player.Character.UpperTorso.Position.Z - currentpos.Z)
			print("xdiff: "..xdiff)
			print("zdiff: "..zdiff)
				end
				end)
		pcall(function()currentpos = player.Character.UpperTorso.Position end)
		end
	end
	end)
