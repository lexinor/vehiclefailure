ESX.RegisterCommand({'fix'}, {"admin", "superadmin", "dev"}, function(xPlayer, args, showError)
    TriggerClientEvent('iens:repaira', xPlayer.source)
    TriggerClientEvent('vehiclemod:client:fixEverything', xPlayer.source)
end, false, {help = "Repair your vehicle (Admin Only)"})

ESX.RegisterUsableItem('repairkit', function(playerId)
    local xPlayer = ESX.GetPlayerFromId(playerId)
	if xPlayer.hasItem("repairkit") ~= nil then
        TriggerClientEvent("vehiclefailure:client:RepairVehicle", playerId)
    end
end)

ESX.RegisterUsableItem('advancedrepairkit', function(playerId)
    local xPlayer = ESX.GetPlayerFromId(playerId)
	if xPlayer.hasItem("advancedrepairkit") ~= nil then
        TriggerClientEvent("vehiclefailure:client:RepairVehicleFull", playerId)
    end
end)

ESX.RegisterUsableItem('cleaningkit', function(playerId)
    local xPlayer = ESX.GetPlayerFromId(playerId)
	if xPlayer.hasItem("repairkit") ~= nil then
        TriggerClientEvent("vehiclefailure:client:CleanVehicle", playerId)
    end
end)

RegisterNetEvent('vehiclefailure:removeItem', function(item)
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.removeInventoryItem(item, 1)
end)

RegisterNetEvent('vehiclefailure:server:removewashingkit', function(veh)
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.removeInventoryItem("cleaningkit", 1)
    TriggerClientEvent('vehiclefailure:client:SyncWash', -1, veh)
end)
