local QBCore = exports['qb-core']:GetCoreObject()

------------ Drink scenes and things -----------------

QBCore.Functions.CreateUseableItem("baconeggs", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('fz-limeysjob:client:BeberCafe', source)
        Player.Functions.RemoveItem('baconeggs', 1)
    end
end)


QBCore.Functions.CreateUseableItem("bltsandwich", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('fz-limeysjob:client:BeberCafe', source)
        Player.Functions.RemoveItem('bltsandwich', 1)
    end
end)

QBCore.Functions.CreateUseableItem("cheeseburger", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('fz-limeysjob:client:BeberCafe', source)
        Player.Functions.RemoveItem('cheeseburger', 1)
    end
end)

QBCore.Functions.CreateUseableItem("cheesesandwich", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('fz-limeysjob:client:BeberCafe', source)
        Player.Functions.RemoveItem('cheesesandwich', 1)
    end
end)

QBCore.Functions.CreateUseableItem("eggsandwich", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('fz-limeysjob:client:BeberCafe', source)
        Player.Functions.RemoveItem('eggsandwich', 1)
    end
end)

QBCore.Functions.CreateUseableItem("grilledwrap", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('fz-limeysjob:client:BeberCafe', source)
        Player.Functions.RemoveItem('grilledwrap', 1)
    end
end)

QBCore.Functions.CreateUseableItem("hamburger", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('fz-limeysjob:client:BeberCafe', source)
        Player.Functions.RemoveItem('hamburger', 1)
    end
end)

QBCore.Functions.CreateUseableItem("chocolates", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('fz-limeysjob:client:BeberCafe2', source)
        Player.Functions.RemoveItem('chocolates', 1)
    end
end)

QBCore.Functions.CreateUseableItem("coffee", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('fz-limeysjob:client:coffee', source)
        Player.Functions.RemoveItem('coffee', 1)
    end
end)

QBCore.Functions.CreateUseableItem("pinacolada", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('fz-limeysjob:client:BeberCafe', source)
        Player.Functions.RemoveItem('pinacolada', 1)
    end
end)

QBCore.Functions.CreateUseableItem("sangria", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('fz-limeysjob:client:BeberCafe', source)
        Player.Functions.RemoveItem('sangria', 1)
    end
end)

QBCore.Functions.CreateUseableItem("screwdriver", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('fz-limeysjob:client:BeberCafe', source)
        Player.Functions.RemoveItem('screwdriver', 1)
    end
end)

QBCore.Functions.CreateUseableItem("strawdaquiri", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('fz-limeysjob:client:BeberCafe', source)
        Player.Functions.RemoveItem('strawdaquiri', 1)
    end
end)

QBCore.Functions.CreateUseableItem("strawmargarita", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('fz-limeysjob:client:BeberCafe', source)
        Player.Functions.RemoveItem('strawmargarita', 1)
    end

end)

--Coffee
RegisterServerEvent('fz-limeysjob:AddItemRegularCoffee')
AddEventHandler('fz-limeysjob:AddItemRegularCoffee', function()
	local src = source
	local Player = QBCore.Functions.GetPlayer(src)
	Player.Functions.AddItem(Config.Coffee, 1)
	Player.Functions.RemoveItem(Config.BeansItemCoffee, 1)
    Player.Functions.RemoveItem(Config.CupCoffeeItem, 1)
	TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items[Config.BeansItemCoffee], "remove")
    TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items[Config.CupCoffeeItem], "remove")
	TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items[Config.Coffee], "add")
end)

QBCore.Functions.CreateCallback('fz-limeysjob:HasItemForCoffee', function(source, cb)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local beans = Player.Functions.GetItemByName(Config.BeansItemCoffee)
    local cup = Player.Functions.GetItemByName(Config.CupCoffeeItem)
    if cup ~= nil and beans ~= nil then
        cb(true)
    else
        cb(false)
	end
end)

---Cola

RegisterServerEvent('fz-limeysjob:AddItemRegularCola')
AddEventHandler('fz-limeysjob:AddItemRegularCola', function()
	local src = source
	local Player = QBCore.Functions.GetPlayer(src)
	Player.Functions.AddItem(Config.Cola, 1)
	Player.Functions.RemoveItem(Config.Rsmallglass, 1)
    TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items[Config.Rsmallglass], "remove")
	TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items[Config.Cola], "add")
end)

QBCore.Functions.CreateCallback('fz-limeysjob:HasItemForCola', function(source, cb)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local glass = Player.Functions.GetItemByName(Config.Rsmallglass)
    if  glass ~= nil then
        cb(true)
    else
        cb(false)
	end
end)

---Sprunk

RegisterServerEvent('fz-limeysjob:AddItemRegularSprunk')
AddEventHandler('fz-limeysjob:AddItemRegularSprunk', function()
	local src = source
	local Player = QBCore.Functions.GetPlayer(src)
	Player.Functions.AddItem(Config.Sprunk, 1)
	Player.Functions.RemoveItem(Config.Rsmallglass, 1)
    TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items[Config.Rsmallglass], "remove")
	TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items[Config.Sprunk], "add")
end)

QBCore.Functions.CreateCallback('fz-limeysjob:HasItemForSprunk', function(source, cb)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local glass = Player.Functions.GetItemByName(Config.Rsmallglass)
    if  glass ~= nil then
        cb(true)
    else
        cb(false)
	end
end)

---Dount

RegisterServerEvent('fz-limeysjob:AddItemRegularDount')
AddEventHandler('fz-limeysjob:AddItemRegularDount', function()
	local src = source
	local Player = QBCore.Functions.GetPlayer(src)
	Player.Functions.AddItem(Config.Chocdonut, 1)
	Player.Functions.RemoveItem(Config.Plaindonut, 1)
    TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items[Config.Plaindonut], "remove")
	TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items[Config.Chocdonut], "add")
end)

QBCore.Functions.CreateCallback('fz-limeysjob:HasItemForDount', function(source, cb)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local dount = Player.Functions.GetItemByName(Config.Plaindonut)
    if  dount ~= nil then
        cb(true)
    else
        cb(false)
	end
end)

RegisterServerEvent('fz-limeysjob:AddItemRegularCocktils')
AddEventHandler('fz-limeysjob:AddItemRegularCocktils', function()
	local src = source
	local Player = QBCore.Functions.GetPlayer(src)
	Player.Functions.AddItem(Config.Amarettosour, 1)
	Player.Functions.RemoveItem(Config.Rcocktailglass, 1)
    TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items[Config.Rcocktailglass], "remove")
	TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items[Config.Amarettosour], "add")
end)

QBCore.Functions.CreateCallback('fz-limeysjob:HasItemForCocktils', function(source, cb)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local dount = Player.Functions.GetItemByName(Config.Rcocktailglass)
    if  dount ~= nil then
        cb(true)
    else
        cb(false)
	end
end)

RegisterServerEvent('fz-limeysjob:AddItemRegularCocktilss')
AddEventHandler('fz-limeysjob:AddItemRegularCocktilss', function()
	local src = source
	local Player = QBCore.Functions.GetPlayer(src)
	Player.Functions.AddItem(Config.Bellini, 1)
	Player.Functions.RemoveItem(Config.Rcocktailglass, 1)
    TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items[Config.Rcocktailglass], "remove")
	TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items[Config.Bellini], "add")
end)

QBCore.Functions.CreateCallback('fz-limeysjob:HasItemForCocktilss', function(source, cb)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local dount = Player.Functions.GetItemByName(Config.Rcocktailglass)
    if  dount ~= nil then
        cb(true)
    else
        cb(false)
	end
end)


----------------------------------
------- pass invoice ------------

RegisterServerEvent("fz-limeysjob:server:FaturarPlayer", function(playerId, amount)
        local biller = QBCore.Functions.GetPlayer(source)
        local billed = QBCore.Functions.GetPlayer(tonumber(playerId))
        local amount = tonumber(amount)
        if biller.PlayerData.job.name == 'limeys' then
            if billed ~= nil then
                if biller.PlayerData.citizenid ~= billed.PlayerData.citizenid then
                    if amount and amount > 0 then
                        MySQL.Async.execute('INSERT INTO phone_invoices (citizenid, amount, society, sender, sendercitizenid) VALUES (@citizenid, @amount, @society, @sender, @sendercitizenid)', {
                            ['@citizenid'] = billed.PlayerData.citizenid,
                            ['@amount'] = amount,
                            ['@society'] = biller.PlayerData.job.name,
                            ['@sender'] = biller.PlayerData.charinfo.firstname,
                            ['@sendercitizenid'] = biller.PlayerData.citizenid
                        })
                        TriggerClientEvent('qb-phone:RefreshPhone', billed.PlayerData.source)
                        TriggerClientEvent('QBCore:Notify', source, 'Invoice Successfully Sent', 'success')
                        TriggerClientEvent('QBCore:Notify', billed.PlayerData.source, 'New Invoice Received')
                    else
                        TriggerClientEvent('QBCore:Notify', source, 'Must be a number above 0', 'error')
                    end
                else
                    TriggerClientEvent('QBCore:Notify', source, 'You can not bill yourself...', 'error')
                end
            else
                TriggerClientEvent('QBCore:Notify', source, 'The player is not online', 'error')
            end
        else
            TriggerClientEvent('QBCore:Notify', source, 'No access', 'error')
        end
end)

---------------------------------------------
---------- Take money -------------------

RegisterNetEvent('fz-limeysjob:server:Tirar10dolars', function()
   local src = source
   local Player = QBCore.Functions.GetPlayer(src)
	
   Player.Functions.RemoveMoney('bank', 10)
end)
