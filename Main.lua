local s = require(game.Workspace["Squirrel+"].Settings)
game.ReplicatedStorage.event_121134.OnServerEvent:Connect(function(player,localspeed,authcode)
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
