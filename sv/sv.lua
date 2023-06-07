local ESX = exports['es_extended']:getSharedObject()

ESX.RegisterUsableItem('phone', function(source)
    lib.callback("xd", source, false)
    xPlayer.removeInventoryItem('lappari', 1)
end)

lib.callback.register("rahac", function()
    local xPlayer = ESX.GetPlayerFromId(source)
    local itemCount = xPlayer.getAccount("money").money
    if itemCount >= 1000 then
        xPlayer.removeAccountMoney('bank', 1000)
        lib.callback("huume:lasti", source, false)
        print("itemCount")
    else
        print(itemCount)
    end
end)

lib.callback.register("ox_target:itemr", function()
    local count = math.random(5, 100)
    local player = ESX.GetPlayerFromId(source)
    exports.ox_inventory:AddItem(source, 'cannabis', math.random(1, 20), nil, nil, nil)
    if Dispatch then
    TriggerClientEvent("poliisille:halytys")
    else
        print("Dispatch ei ole käysössä")
    end
end)
