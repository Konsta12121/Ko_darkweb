local ESX = exports['es_extended']:getSharedObject()


RegisterCommand('xd', function()
    lib.callback("xd", false, false)
    
end)


lib.callback.register("xd", function()
    ExecuteCommand("e phone") 
    lib.progressBar({
        duration = 3000,
        label = "Avataan...",
    })
    SetTimeout("3000", function()
        openMenu()
        -- TriggerEvent("paskaa")
end)
end)

function openMenu()
    local elements = {}

    elements[#elements+1] = {
        label = 'Tilaa Cannabista',
        value = 'osta',
    }
    elements[#elements+1] = {
        label = 'Poistu',
        value = 'poistu'
    }
    
    ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'menu_id', {
        title    = 'DarkWeb',
        align    = 'bottom-right',
        elements = elements
    }, function(data, menu)
    
        if data.current.value == 'osta' then
            lib.callback("rahac", false, false)
         ESX.UI.Menu.CloseAll()
        end

        if data.current.value == 'poistu' then
            ESX.UI.Menu.CloseAll()
        end
    
    end, function(data, menu)
        menu.close()
    end)
end 

lib.callback.register("huume:lasti", function()
    ESX.ShowNotification('Tossa sulle gps odotan että koputat oveen!')
    SetNewWaypoint(780.7079, -1298.5270, 26.2773)
    exports.ox_target:addSphereZone({
        coords = vec3(780.6286, -1298.8226, 26.2748),
        radius = 1,
        debug = drawZones,
        options = {
            {
                name = 'sphere',
                onSelect = function()
                lib.callback("ox_target:itemr", false, false)
            end,
                icon = 'fa-solid fa-circle',
                label = 'Ota huumeet',
            }
        }
    })
end)


RegisterNetEvent("poliisille:halytys", function()

    local data = exports['cd_dispatch']:GetPlayerInfo()
    TriggerServerEvent('cd_dispatch:AddNotification', {
        job_table = {'police'}, 
        coords = data.coords,
        title = '10-54 - Drugs',
        message = 'A '..data.sex..' Buy drugs '..data.street, 
        flash = 0,
        unique_id = tostring(math.random(0000000,9999999)),
        blip = {
            sprite = 431, 
            scale = 1.2, 
            colour = 3,
            flashes = false, 
            text = '911 - Drugs',
            time = (5*60*1000),
            sound = 1,
        }
    })
end)
