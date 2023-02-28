----------------------------------------
-------Created By Whit3Xlightning-------
-- https://github.com/Whit3XLightning --
---------------------------------------
-- https://github.com/Rivest8/wld-delallveh --

local inProgress = false

local function onMassDVCommand(source, args, rawCommand)
	if (not inProgress) then 
		inProgress = true
		TriggerClientEvent("wld:delallveh", -1)
		Citizen.Wait(1000*30)
		inProgress = false
	end
end

-- Register the command
RegisterCommand(Config.commandName, onMassDVCommand, Config.restricCommand)