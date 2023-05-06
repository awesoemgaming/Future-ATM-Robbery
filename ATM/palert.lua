local QBCore = exports['qb-core']:GetCoreObject()

if Config.polcall == true then
    RegisterNetEvent('copalert')
    AddEventHandler('copalert', function(coords)
        RegisterCommand(Config.polcommand, function(source, args)
            local playerPed = PlayerPedId()
            local playerCoords = GetEntityCoords(playerPed)
            local streetName, crossingRoad = GetStreetNameAtCoord(Config.location.x, Config.location.y, Config.location.z)
            local message = args[1] .. " at " .. streetName
            local job = QBCore.Functions.GetPlayerData().job.name
            if args[1] == nil then
                QBCore.Functions.Notify("How can the cops know what you need if you don't tell them?\nPlease put some text, so the police can help you", "error", 5000)
            elseif job == 'police' or job == 'statepolice' or job == 'fib' or job == 'sheriff' or job == 'highway' then
                QBCore.Functions.Notify(message, 'police', 5000)
            end
        end)
    end)
end
