----------------------------------------
-------Created By Whit3Xlightning-------
-- https://github.com/Whit3XLightning --
---------------------------------------
-- https://github.com/Rivest8/wld-delallveh --

RegisterNetEvent("wld:delallveh")
AddEventHandler("wld:delallveh", function ()
		TriggerEvent('chat:addMessage', { color = { 255, 0, 0}, multiline = false, args = {"^3[^1MASS DV^3]^0", "^1All unoccupied vehicles will be deleted in ^330^1 seconds..."}})
		Citizen.Wait(1000*10)
		TriggerEvent('chat:addMessage', { color = { 255, 0, 0}, multiline = false, args = {"^3[^1MASS DV^3]^0", "^1All unoccupied vehicles will be deleted in ^320^1 seconds..."}})
		Citizen.Wait(1000*10)
		TriggerEvent('chat:addMessage', { color = { 255, 0, 0}, multiline = false, args = {"^3[^1MASS DV^3]^0", "^1All unoccupied vehicles will be deleted in ^310^1 seconds..."}})		
		Citizen.Wait(1000*5)
		TriggerEvent('chat:addMessage', { color = { 255, 0, 0}, multiline = false, args = {"^3[^1MASS DV^3]^0", "^1All unoccupied vehicles will be deleted in ^35^1 seconds..."}})
		Citizen.Wait(1000*5)
		TriggerEvent('chat:addMessage', { color = { 255, 0, 0}, multiline = false, args = {"^3[^1MASS DV^3]^0", "^1DELETING ALL unoccupied vehicles ^3NOW!"}})		
		Citizen.Wait(1000*3)
    for vehicle in EnumerateVehicles() do
        if (not IsPedAPlayer(GetPedInVehicleSeat(vehicle, -1))) then 
            SetVehicleHasBeenOwnedByPlayer(vehicle, false) 
            SetEntityAsMissionEntity(vehicle, false, false) 
            DeleteVehicle(vehicle)
            if (DoesEntityExist(vehicle)) then 
                DeleteVehicle(vehicle) 
            end
        end
    end
	Citizen.Wait(1000*10)
	TriggerEvent('chat:addMessage', { color = { 255, 0, 0}, multiline = false, args = {"^3[^1MASS DV^3]^0", "^3All vehicles have been deleted. Wait a second before getting out."}})
end)