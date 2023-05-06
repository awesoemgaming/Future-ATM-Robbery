local QBCore = exports['qb-core']:GetCoreObject()
local cooldown = false
local wait = Config.cooldown
local controlPressed = false
local players = QBCore.Functions.GetPlayers()
local ATM = Config.location
local text = Config.robtext
local location = ATM

  Citizen.CreateThread(function()
    while true do
      Citizen.Wait(0)
      local playerPed = GetPlayerPed(-1)
      local playerCoords = GetEntityCoords(playerPed)
      local coords = playerCoords
      if #(playerCoords - ATM) < Config.distance and IsControlJustPressed(0, Config.robkey) and cooldown == false and controlPressed == false then
        cooldown = true
        controlPressed = true
        
        local ped = PlayerPedId()
        local animDict = "oddjobs@shop_robbery@rob_till"
        local animName = "loop"
        local duration = Config.duration

        RequestAnimDict(animDict)
        while not HasAnimDictLoaded(animDict) do
          Citizen.Wait(0)
        end
        TaskPlayAnim(ped, animDict, animName, 8.0, -8.0, duration, 1, 0, false, false, false)
        Citizen.Wait(duration)
        TriggerServerEvent("robatm", Config.location, GetEntityCoords(GetPlayerPed(-1)))

        Citizen.CreateThread(function()
          while true do
            Citizen.Wait(0)
            local playerPed = GetPlayerPed(-1)
            local playerCoords = GetEntityCoords(playerPed)
            if #(playerCoords - ATM) < Config.distance and IsControlJustPressed(0, Config.robkey) and cooldown == false then
              local ped = PlayerPedId()
              local animDict = "oddjobs@shop_robbery@rob_till"
              local animName = "loop"
              local duration = Config.duration

              RequestAnimDict(animDict)
              while not HasAnimDictLoaded(animDict) do
                Citizen.Wait(0)
              end
              TaskPlayAnim(ped, animDict, animName, 8.0, -8.0, duration, 1, 0, false, false, false)
              Citizen.Wait(duration)
              TriggerServerEvent("robatm")
              TriggerServerEvent("disable:cooldown")
            elseif #(playerCoords - ATM) < Config.distance and IsControlJustPressed(0, Config.robkey) and cooldown == true and controlPressed == true then
              QBCore.Functions.Notify(Config.cooldownmesssage, "error", Config.cooldownmsgtime)
      end
    end
  end)
end
end
end)

RegisterNetEvent("showNotification")
AddEventHandler("showNotification", function(msg, type, duration)
  QBCore.Functions.Notify(msg, type, duration)
end)

Citizen.CreateThread(function()
  while true do
      Citizen.Wait(0)
      local playerPed = GetPlayerPed(-1)
      local playerCoords = GetEntityCoords(playerPed)
      local distance = #(playerCoords - location)
      
      if controlPressed == false and distance <= Config.distance then
        local screenCoords = GetScreenCoordFromWorldCoord(location.x, location.y, location.z)
        SetDrawOrigin(location.x, location.y, location.z, 0)
        SetTextScale(0.0, 0.5)
        SetTextFont(4)
        SetTextColour(255, 255, 255, 255)
        SetTextDropShadow(2, 2, 0, 0, 0)
        SetTextEdge(2, 0, 0, 0, 150)
        SetTextCentre(1)
        SetTextWrap(0.0, 1.0)
        SetTextEntry("STRING")
        AddTextComponentString(text)
        DrawText(0.0, 0.0)
        DrawRect(0.5, 0.5 + 0.01, 0.04, 0, 0, 0, 200)
        ClearDrawOrigin()
      end
  end
end)
