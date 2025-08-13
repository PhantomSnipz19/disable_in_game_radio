-- [Made By PhantomSnipz @ Firestorm Development]

CreateThread(function()
    -- Disable manual radio control once at start
    SetUserRadioControlEnabled(false)

    while true do
        local ped = PlayerPedId()

        -- Check if the player is in a vehicle
        if IsPedInAnyVehicle(ped, false) then
            local veh = GetVehiclePedIsIn(ped, false)
            if veh and veh ~= 0 then
                SetVehRadioStation(veh, "OFF")
            end
        end

        -- Keep manual control disabled
        SetUserRadioControlEnabled(false)

        Wait(0) -- Run every frame
    end
end)