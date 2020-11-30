--THIS IS A MODULESCRIPT
--Change settings here.
--Each setting is also explained here.
local options = {
	
	hopperBinCheck = true,
	--This setting  allows checking for the "HopperBin" type (A legacy method to enable a clone wand, grab/move hand, and delete tool
	--COMMONLY used by exploiters, easily used to delete parts on the client and then walk directly through them. Won't stop all btools but will help.
	--Wiki Link Here: https://developer.roblox.com/en-us/api-reference/class/HopperBin
	
	walkSpeedChangeDetect=true,
	--WalkSpeed change detector. If the player walkspeed changes, it will tell the server, check to see if it is a permitted value, and then take action as neccesary
	
	walkSpeedValues={16,50,100},
	--WalkSpeed values. If player WalkSpeed is changed to anything but this, server is told, catchAction is ran.
	
	usernamePrefixChecking = true,
	--turn on or off checking username prefixes.
	
	suspiciousUsernamePrefixes = {"catbot_"},
	--Suspicious username prefixes, requires all users with a username that starts with any of these strings to fill out a short captcha before they can play.
	--If the user fails, whatever is defined in captchaFailAction will be ran.
	
	captchaRetriesAllow = true,
	--Enable this to allow the captcha to be redone in case they fail the first time.
	
	captchaRetryLimit = 1,
	--How many times they can take the captcha, not including the inital time.
	
	
	
	
	
	
	
	
	
	
	
	

}
--Function area
function options.catchAction(player,violation)
	--Put action to happen to players detected by the system here. You can kick them, ban them in your own system, or do anything really. 
	--the PLAYER variable inside of this function is what would appear for a specific player under game.Players, that is a class of Player and not Character or Humanoid.
	player:Kick("You have been detected by Squirrel Plus. Please refrain from using cheats. Cheat Detected: "..violation)
end
function captchaFailAction(player)
	if options.captchaRetriesAllow==true then
		
	end
end
return options
