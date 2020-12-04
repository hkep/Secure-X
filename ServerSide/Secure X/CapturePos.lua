local Players = game:GetService("Players")
local AntiTP = false
local MaximumXZChange = 20
-- 16 walkspeed is 16 studs/sec
-- if you ragdoll too far it will kick you

Players.PlayerAdded:Connect(function(Player)
	if not AntiTP then return end -- don't do anything if AntiTP is false
	
	Player.CharacterAdded:Connect(function(Character)
		local HRP = Character:WaitForChild("HumanoidRootPart")
		local currentpos
		local max_diff = MaximumXZChange^2 -- yes square it
		while wait(1) do
			pcall(function() 
				if currentpos~=nil then
					local xdiff = math.abs(HRP.Position.X - currentpos.X)
					local zdiff = math.abs(HRP.Position.Z - currentpos.Z)
					local current_diff = xdiff*xdiff + zdiff*zdiff -- no math.sqrt
					print("xdiff: "..xdiff)
					print("zdiff: "..zdiff)
					if (current_diff > max_diff) then
						Player:Kick("Teleporting Detected")
					end
				end
			end)
			pcall(function()
				currentpos = HRP.Position
			end)
		end
	end
end)
