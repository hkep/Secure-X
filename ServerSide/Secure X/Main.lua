local event = game:GetService("ReplicatedStorage"):FindFirstChild("event_121134")
local s = require(game:GetService("ServerScriptService"):FindFirstChild("Secure X"):FindFirstChild("Settings"))
--Client-side walkspeed checking:
if event then
	event.OnServerEvent:Connect(function(player,localspeed,authcode)
		if authcode=="SECRETCODEGENERATEAGUIDANDPUTITHERE" then

			local failvalue=0
			for i=1,#s.WalkSpeedValues,1 do
				wait(0.1)
				if s.WalkSpeedValues[i]~=localspeed then
					failvalue=failvalue+1
				end
			end
			print("Fail value: "..failvalue)
			if failvalue==#s.WalkSpeedValues then
				s.CatchAction(player,"Irrational Speed")
			end
		end
	end)
end

--Prefix Checking:
game:GetService("Players").PlayerAdded:Connect(function(player)
	player.CharacterAdded:Wait()
	if s.usernamePrefixChecking==true then
	local prefixes = s.suspiciousUsernamePrefixes
	local playerName = player.Name
		for i=1,#prefixes,1 do
			wait(0.1)
		local prefixLength = string.len(prefixes[i])
		local playerString = string.sub(playerName,0,prefixLength)
		if string.lower(playerString)==string.lower(prefixes[i]) then
				s.sendCaptcha(player)
				break
			end
			end
	end
end)
