

function HUD:InfoHandle(msg, color)
    if color == "green" then
        color = 2
    elseif color == "red" then
        color = 1
    elseif color == "blue" then
        color = 4
    else
        color = 3
    end
    print(("[^9INFO^7] ^3esx_hud^7: ^" .. color .. "%s^7"):format(msg))
end



RegisterNetEvent("esx_hud:ErrorHandle", function(msg)
    HUD:ErrorHandle(msg)
end)

AddEventHandler("onResourceStart", function(resourceName)
    local currentName = GetCurrentResourceName()
    if resourceName ~= currentName then
        return
    end
    local built = LoadResourceFile(currentName, "./web/dist/index.html")

    Wait(100)

    if not built then
        CreateThread(function()
            while true do
                HUD:ErrorHandle(Translate("resource_not_built"))
                Wait(10000)
            end
        end)
    end
end)
