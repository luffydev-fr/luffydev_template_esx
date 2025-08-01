-- GESTION NPC TRAFFIC DENSITY
-- By LuffyDev Team 

local trafficDensity = Config.TrafficDensity
local isTrafficEnabled = Config.IsTrafficEnabled

local densityFunctions = {
    SetVehicleDensityMultiplierThisFrame,
    SetPedDensityMultiplierThisFrame,
    SetRandomVehicleDensityMultiplierThisFrame,
    SetParkedVehicleDensityMultiplierThisFrame,
    SetScenarioPedDensityMultiplierThisFrame
}

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if isTrafficEnabled then
            for _, func in ipairs(densityFunctions) do
                if func == SetScenarioPedDensityMultiplierThisFrame then
                    func(trafficDensity, trafficDensity)
                else
                    func(trafficDensity)
                end
            end
        end
    end
end)
