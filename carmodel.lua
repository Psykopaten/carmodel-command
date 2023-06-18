RegisterCommand('carmodel', function()
    local playerPed = GetPlayerPed(-1)

    if IsPedSittingInAnyVehicle(playerPed) then
        local vehicle = GetVehiclePedIsIn(playerPed, false)
        local modelName = GetDisplayNameFromVehicleModel(GetEntityModel(vehicle))

        -- shows current car player is sitting in
        TriggerEvent('chat:addMessage', {
            color = {255, 255, 0},
            multiline = true,
            args = {'Car Model', 'You are sitting in a '..modelName}
        })
    else
        --If player don't sit in car
        TriggerEvent('chat:addMessage', {
            color = {255, 0, 0},
            multiline = true,
            args = {'Car Model', 'You are not sitting in a vehicle'}
        })
    end
end)
