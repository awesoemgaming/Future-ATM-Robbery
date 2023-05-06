local QBCore = exports['qb-core']:GetCoreObject()

RegisterServerEvent("robatm")
AddEventHandler("robatm", function(cooldown, controlPressed)
    local src = source
    local amount = math.random(Config.lowmoney, Config.highmoney)
    local xPlayer = QBCore.Functions.GetPlayer(src)
    if xPlayer and Config.blackmoney == false then
        TriggerClientEvent("showNotification", src, Config.cashrobmessage ..amount, "success", Config.cashrobmsgtime)
        xPlayer.Functions.AddMoney(Config.money, amount)
    elseif Config.blackmoney == true then
        TriggerClientEvent("showNotification", src, Config.blackmoneyrobmsg ..Config.blackmoneyamount, "success", 3000)
        xPlayer.Functions.AddItem(Config.blackmoneyname, Config.blackmoneyamount)
    end
end)

RegisterServerEvent('atm:cooldown')
AddEventHandler('atm:cooldown', function(cooldown, controlPressed)
    local src = source
    local xPlayer = QBCore.Functions.GetPlayer(src)
    if cooldown == false and controlPressed == false then
        TriggerClientEvent("showNotification", src, Config.clearmessage, "success", Config.clearmsgtime)
    end 
end)

RegisterServerEvent('atm:rob')
AddEventHandler('atm:rob', function(streetName, coords)
    local playerId = GetPlayerId()
    local playerJob = QBCore.Functions.GetPlayerJob(playerId)
    if playerJob.name == Config then
        TriggerClientEvent('atm:createBlip', -1, coords)
        TriggerClientEvent('atm:notify', -1, "ATM Robbery at " .. streetName, 'police', 5000)
    end
end)
