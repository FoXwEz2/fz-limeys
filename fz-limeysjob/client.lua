local QBCore = exports['qb-core']:GetCoreObject()

--- Scenes and Things for Job -------------

RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
    QBCore.Functions.GetPlayerData(function(PlayerData)
        PlayerJob = PlayerData.job
		if PlayerData.job.onduty then
			if PlayerData.job.name == "limeys" then
				TriggerServerEvent("QBCore:ToggleDuty")
			end
		end
	end)
end)

RegisterNetEvent('QBCore:Client:OnJobUpdate', function(JobInfo)
    PlayerJob = JobInfo
    onDuty = PlayerJob.onduty
end)

--// Shop \\--
RegisterNetEvent('fz-Limeysjob:Open', function()
    TriggerServerEvent("inventory:server:OpenInventory", "shop", "Limeys Shop", Config.Items)
end)


--// Duty \\--
RegisterNetEvent('fz-limeysjob:On', function()
	onDuty = not onDuty
	TriggerServerEvent("QBCore:ToggleDuty")
end)

--// Coffee System \\--
RegisterNetEvent("fz-limeysjob:MakeCoffee", function()
    QBCore.Functions.TriggerCallback('fz-limeysjob:HasItemForCoffee', function(HasItems)
        if HasItems then
			MakeCoffee()
        else
			QBCore.Functions.Notify('You Dont Have Enough Coffee Beans / Coffee Cup', 'error')
        end
    end)
end)

--// Make Coffee \\--
function MakeCoffee()
	TriggerServerEvent('fz-limeysjob:MakeCoffee')
	QBCore.Functions.Progressbar("search_register", "Pours the Coffee into the bottle...", 2200, false, true, {
	   disableMovement = true,
	   disableCarMovement = true,
	   disableMouse = false,
	   disableCombat = true,
	}, {
	   animDict = 'anim@amb@nightclub@lazlow@ig1_vip@',
	   anim = 'clubvip_base_laz',
	   flags = 16,
	}, {}, {}, function()
	TriggerServerEvent('fz-limeysjob:AddItemRegularCoffee')
	QBCore.Functions.Notify("Regular Coffee Successfully Made")                                                                  				
	   ClearPedTasks(GetPlayerPed(-1))
	end, function()
	   ClearPedTasks(GetPlayerPed(-1))
	end)
end

--// cola System \\--
RegisterNetEvent("fz:Cola", function()
    QBCore.Functions.TriggerCallback('fz-limeysjob:HasItemForCola', function(HasItems)
        if HasItems then
			MakeCola()
        else
			QBCore.Functions.Notify('You Dont Have Enough Small Glass ', 'error')
        end
    end)
end)

--// Make Cola \\--
function MakeCola()
	TriggerServerEvent('fz:Cola')
	QBCore.Functions.Progressbar("", "Pours Cola...", 2000, false, true, {
	   disableMovement = true,
	   disableCarMovement = true,
	   disableMouse = false,
	   disableCombat = true,
	}, {
	   animDict = 'anim@amb@nightclub@lazlow@ig1_vip@',
	   anim = 'clubvip_base_laz',
	   flags = 16,
	}, {}, {}, function()
	TriggerServerEvent('fz-limeysjob:AddItemRegularCola')
	QBCore.Functions.Notify("Regular Cola Successfully Made")                                                                  				
	   ClearPedTasks(GetPlayerPed(-1))
	end, function()
	   ClearPedTasks(GetPlayerPed(-1))
	end)
end

--// sprunk System \\--
RegisterNetEvent("fz:sprunk", function()
    QBCore.Functions.TriggerCallback('fz-limeysjob:HasItemForSprunk', function(HasItems)
        if HasItems then
			MakeSprunk()
        else
			QBCore.Functions.Notify('You Dont Have Enough Small Glass ', 'error')
        end
    end)
end)

--// Make sprunk \\--
function MakeSprunk()
	TriggerServerEvent('fz:sprunk')
	QBCore.Functions.Progressbar("", "Pours Sprunk...", 2000, false, true, {
	   disableMovement = true,
	   disableCarMovement = true,
	   disableMouse = false,
	   disableCombat = true,
	}, {
	   animDict = 'anim@amb@nightclub@lazlow@ig1_vip@',
	   anim = 'clubvip_base_laz',
	   flags = 16,
	}, {}, {}, function()
	TriggerServerEvent('fz-limeysjob:AddItemRegularSprunk')
	QBCore.Functions.Notify("Regular Sprunk Successfully Made")                                                                  				
	   ClearPedTasks(GetPlayerPed(-1))
	end, function()
	   ClearPedTasks(GetPlayerPed(-1))
	end)
end

--// dount System \\--
RegisterNetEvent("fz:dount", function()
    QBCore.Functions.TriggerCallback('fz-limeysjob:HasItemForDount', function(HasItems)
        if HasItems then
			MakeDount()
        else
			QBCore.Functions.Notify('You Dont Have Enough Plain Donut ', 'error')
        end
    end)
end)

--// Make Dount \\--
function MakeDount()
	TriggerServerEvent('fz:dount')
	QBCore.Functions.Progressbar("", "Pours Dount...", 2000, false, true, {
	   disableMovement = true,
	   disableCarMovement = true,
	   disableMouse = false,
	   disableCombat = true,
	}, {
	   animDict = 'anim@amb@nightclub@lazlow@ig1_vip@',
	   anim = 'clubvip_base_laz',
	   flags = 16,
	}, {}, {}, function()
	TriggerServerEvent('fz-limeysjob:AddItemRegularDount')
	QBCore.Functions.Notify("Regular Dount Successfully Made")                                                                  				
	   ClearPedTasks(GetPlayerPed(-1))
	end, function()
	   ClearPedTasks(GetPlayerPed(-1))
	end)
end

--// amarettosour System \\--
RegisterNetEvent("fz:amarettosour", function()
    QBCore.Functions.TriggerCallback('fz-limeysjob:HasItemForCocktils', function(HasItems)
        if HasItems then
			MakeAmarettosour()
        else
			QBCore.Functions.Notify('You Dont Have Enough Small Glass ', 'error')
        end
    end)
end)

--// Make amarettosour \\--
function MakeAmarettosour()
	TriggerServerEvent('fz:amarettosour')
	QBCore.Functions.Progressbar("", "Pours Cocktils...", 2000, false, true, {
	   disableMovement = true,
	   disableCarMovement = true,
	   disableMouse = false,
	   disableCombat = true,
	}, {
	   animDict = 'anim@amb@nightclub@lazlow@ig1_vip@',
	   anim = 'clubvip_base_laz',
	   flags = 16,
	}, {}, {}, function()
	TriggerServerEvent('fz-limeysjob:AddItemRegularCocktils')
	QBCore.Functions.Notify("Regular Amarettosour Successfully Made")                                                                  				
	   ClearPedTasks(GetPlayerPed(-1))
	end, function()
	   ClearPedTasks(GetPlayerPed(-1))
	end)
end

--// bellini System \\--
RegisterNetEvent("fz:bellini", function()
    QBCore.Functions.TriggerCallback('fz-limeysjob:HasItemForCocktilss', function(HasItems)
        if HasItems then
			MakeBellini()
        else
			QBCore.Functions.Notify('You Dont Have Enough Cocktail Glass ', 'error')
        end
    end)
end)

--// Make bellini \\--
function MakeBellini()
	TriggerServerEvent('fz:bellini')
	QBCore.Functions.Progressbar("", "Pours Cocktils...", 2000, false, true, {
	   disableMovement = true,
	   disableCarMovement = true,
	   disableMouse = false,
	   disableCombat = true,
	}, {
	   animDict = 'anim@amb@nightclub@lazlow@ig1_vip@',
	   anim = 'clubvip_base_laz',
	   flags = 16,
	}, {}, {}, function()
	TriggerServerEvent('fz-limeysjob:AddItemRegularCocktilss')
	QBCore.Functions.Notify("Regular bellini Successfully Made")                                                                  				
	   ClearPedTasks(GetPlayerPed(-1))
	end, function()
	   ClearPedTasks(GetPlayerPed(-1))
	end)
end



----------------------------------------------
------------------ Menus ---------------------

--// Coffee Menu \\--
RegisterNetEvent('Cocktails:Menu', function()
    TriggerEvent('qb-menu:client:openMenu', {
        {
            header = "Cocktils Menu",
			isMenuHeader = true,
        },  
		{
            header = "Regular Amarettosour",
            txt = "Requires: 1X GlassCup",
			params = {
				event = "fz:amarettosour",
			}
        },  
        {
            header = "Regular Bellini",
            txt = "Requires: 1X GlassCup",
			params = {
				event = "fz:bellini",
			}
        },    
		{
            header = "Close Menu",
            params = {
                event = "qb-menu:client:closeMenu",
            }
        },  
    })
end)

--// Coffee Menu \\--
RegisterNetEvent('Coffee:Menu', function()
    TriggerEvent('qb-menu:client:openMenu', {
        {
            header = "Coffee Menu",
			isMenuHeader = true,
        },  
		{
            header = "Regular Coffee",
            txt = "Requires: 1X Small Coffee Cup 1X Regular Coffee Beans",
			params = {
				event = "fz-limeysjob:MakeCoffee",
			}
        },    
		{
            header = "Close Menu",
            params = {
                event = "qb-menu:client:closeMenu",
            }
        },  
    })
end)

--// Dount Menu \\--
RegisterNetEvent('fz:dount:Menu', function()
    TriggerEvent('qb-menu:client:openMenu', {
        {
            header = "Dount Menu",
			isMenuHeader = true,
        },  
		{
            header = "Regular Dount",
            txt = "Requires: 1X Plain Donut",
			params = {
				event = "fz:dount",
			}
        },    
		{
            header = "Close Menu",
            params = {
                event = "qb-menu:client:closeMenu",
            }
        },  
    })
end)


--// Cola Menu \\--
RegisterNetEvent('fz-colaitem', function()
    TriggerEvent('qb-menu:client:openMenu', {
        {
            header = "Cola Menu",
			isMenuHeader = true,
        },  
		{
            header = "Regular Cola",
            txt = "Requires: 1X Small Glass",
			params = {
				event = "fz:Cola",
			}
        }, 
        {
            header = "Regular Sprunk",
            txt = "Requires: 1X Small Glass",
			params = {
				event = "fz:sprunk",
			}
        },    
		{
            header = "Close Menu",
            params = {
                event = "qb-menu:client:closeMenu",
            }
        },  
    })
end)


RegisterNetEvent('fz-limeysjob:client:ItemsCoffee', function()
    exports['qb-menu']:openMenu({
        {
            header = "Item Coffee",
            isMenuHeader = true,
        },
        {
            header = "Coffee Beans",
            txt = "",
            params = {
                event = "fz-limeysjob:client:coffeebeans",
            }
        },
        {
            header = "Coffee Cup",
            txt = "",
            params = {
                event = "fz-limeysjob:client:coffeecup",
            }
        },
    })
end)

RegisterNetEvent('fz-limeysjob:client:GlassItams', function()
    exports['qb-menu']:openMenu({
        {
            header = "Glass",
            isMenuHeader = true,
        },
        {
            header = "Small Glass",
            txt = "",
            params = {
                event = "fz-limeysjob:client:Glass",
            }
        },
        {
            header = "GlassCup",
            txt = "",
            params = {
                event = "fz-limeysjob:client:Glass2",
            }
        },
        {
            header = "Cocktail Glass",
            txt = "",
            params = {
                event = "fz-limeysjob:client:Glass3",
            }
        },
    })
end)

RegisterNetEvent('fz-limeys:frozen', function()
    exports['qb-menu']:openMenu({
        {
            header = "Glass",
            isMenuHeader = true,
        },
        {
            header = "Small Glass",
            txt = "",
            params = {
                event = "fz-limeysjob:client:Glass",
            }
        },
        {
            header = "GlassCup",
            txt = "",
            params = {
                event = "fz-limeysjob:client:Glass2",
            }
        },
        {
            header = "Cocktail Glass",
            txt = "",
            params = {
                event = "fz-limeysjob:client:Glass3",
            }
        },
    })
end)

RegisterNetEvent('fz-limeysjob:client:Clock', function()
    exports['qb-menu']:openMenu({
        {
            header = "Clock In/Out",
            txt = "Duty Optints",
            params = {
                event = "fz-limeysjob:client:service",
            }
        },
        {
            header = "Close",
            txt = "",
            params = {
                event = "qb-menu:closeMenu",
            }
        },
    })
end)

RegisterNetEvent('fz-limeysjob:client:MenuBebidas', function()
    exports['qb-menu']:openMenu({
        {
            header = "Drinks",
            isMenuHeader = true,
        },
        {
            header = "❌",
            txt = "",
            params = {
                event = "qb-menu:closeMenu",
            }
        },
        {
            header = "Cola",
            txt = "",
            params = {
                event = "fz-limeysjob:client:PegarCola",
            }
        },
        {
            header = "Colalight",
            txt = "",
            params = {
                event = "fz-limeysjob:client:Cola",
            }
        },
        {
            header = "Sprunk",
            txt = "",
            params = {
                event = "fz-limeysjob:client:PegarIceTeaLimao",
            }
        },
        {
            header = "Sprunklight",
            txt = "",
            params = {
                event = "fz-limeysjob:client:PegarIceTeaPessego",
            }
        },
    })
end)

RegisterNetEvent('fz-limeysjob:client:chocolate', function()
    exports['qb-menu']:openMenu({
        {
            header = "chocolates",
            isMenuHeader = true,
        },
        {
            header = "❌",
            txt = "",
            params = {
                event = "qb-menu:closeMenu",
            }
        },
        {
            header = "chocolates",
            txt = "",
            params = {
                event = "fz-limeysjob:client:Chocolates",
            }
        },
        {
            header = "chocolate",
            txt = "",
            params = {
                event = "fz-limeysjob:client:Chocolates2",
            }
        },
    })
end)

------------- Get food/drinks ----------


RegisterNetEvent('fz-limeysjob:client:coffeebeans', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'Get Coffee Beans...', 2700, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "coffeebeans", 1)
    end)
end)

RegisterNetEvent('fz-limeysjob:client:coffeecup', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'Get Coffee Cup...', 2700, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "coffeecup", 1)
        TriggerServerEvent('fz-limeysjob:server:Tirar10dolars')
    end)
end)

RegisterNetEvent('fz-limeysjob:client:PegarCupcakeBaunilha', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'Get Cheese Burger...', 2700, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "cheeseburger", 1)
	TriggerServerEvent('fz-limeysjob:server:Tirar10dolars')
    end)
end)

RegisterNetEvent('fz-limeysjob:client:PegarCupcakeMorango', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'Get Cheese Sandwich...', 2700, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "cheesesandwich", 1)
	TriggerServerEvent('fz-limeysjob:server:Tirar10dolars')
    end)
end)

RegisterNetEvent('fz-limeysjob:client:PegarNutelaPancake', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'Get Eggs Sandwich...', 2700, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "eggsandwich", 1)
	TriggerServerEvent('fz-limeysjob:server:Tirar10dolars')
    end)
end)

RegisterNetEvent('fz-limeysjob:client:PegarPanquecaMel', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'Get Grilled Wrap...', 2700, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "grilledwrap", 1)
	TriggerServerEvent('fz-limeysjob:server:Tirar10dolars')
    end)
end)

RegisterNetEvent('fz-limeysjob:client:Glass', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'Get Glass...', 2700, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "rsmallglass", 1)
	TriggerServerEvent('fz-limeysjob:server:Tirar10dolars')
    end)
end)

RegisterNetEvent('fz-limeysjob:client:Glass2', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'Get GlassCup...', 2700, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "glasscup", 1)
	TriggerServerEvent('fz-limeysjob:server:Tirar10dolars')
    end)
end)

RegisterNetEvent('fz-limeysjob:client:Glass3', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'Get Cocktail Glass...', 2700, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "rcocktailglass", 1)
	TriggerServerEvent('fz-limeysjob:server:Tirar10dolars')
    end)
end)

RegisterNetEvent('fz-limeysjob:client:PegarCafe2', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'Get Hamburger...', 2700, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "hamburger", 1)
	TriggerServerEvent('fz-limeysjob:server:Tirar10dolars')
    end)
end)

RegisterNetEvent('fz-limeysjob:client:PegarLatte', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'TAKING A LATTE...', 2700, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "limeys-latte", 1)
	TriggerServerEvent('fz-limeysjob:server:Tirar10dolars')
    end)
end)

RegisterNetEvent('fz-limeysjob:client:PegarCappuccino', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'TAKING A CAPPUCCINO...', 2700, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "limeys-cappuccino", 1)
	TriggerServerEvent('fz-limeysjob:server:Tirar10dolars')
    end)
end)

RegisterNetEvent('fz-limeysjob:client:PegarMocha', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'TAKING A MOCHA...', 2700, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "limeys-mocha", 1)
	TriggerServerEvent('fz-limeysjob:server:Tirar10dolars')
    end)
end)

RegisterNetEvent('fz-limeysjob:client:PegarCafe', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'Get Coffee...', 2700, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "coffee", 1)
	TriggerServerEvent('fz-limeysjob:server:Tirar10dolars')
    end)
end)

RegisterNetEvent('fz-limeysjob:client:PegarCha', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'TAKING A TEA...', 2700, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "limeys-cha", 1)
	TriggerServerEvent('fz-limeysjob:server:Tirar10dolars')
    end)
end)

RegisterNetEvent('fz-limeysjob:client:Chocolates', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'Get Chocolates...', 2700, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "chocolate", 1)
	TriggerServerEvent('fz-limeysjob:server:Tirar10dolars')
    end)
end)

RegisterNetEvent('fz-limeysjob:client:Chocolates2', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'Get Chocolates...', 2700, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "chocolates", 1)
	TriggerServerEvent('fz-limeysjob:server:Tirar10dolars')
    end)
end)

RegisterNetEvent('fz-limeysjob:client:PegarCola', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'Get Cola...', 2700, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "ecola", 1)
	TriggerServerEvent('fz-limeysjob:server:Tirar10dolars')
    end)
end)

RegisterNetEvent('fz-limeysjob:client:PegarAgua', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'Get Cola...', 2700, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "ecolalight ", 1)
	TriggerServerEvent('fz-limeysjob:server:Tirar10dolars')
    end)
end)

RegisterNetEvent('fz-limeysjob:client:PegarIceTeaLimao', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'Get Sprunk...', 2700, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "sprunk", 1)
	TriggerServerEvent('fz-limeysjob:server:Tirar10dolars')
    end)
end)


RegisterNetEvent('fz-limeysjob:client:Cola', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'Get Cola...', 2700, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "ecolalight", 1)
	TriggerServerEvent('fz-limeysjob:server:Tirar10dolars')
    end)
end)

RegisterNetEvent('fz-limeysjob:client:PegarSprunk', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'Get Margarita...', 2700, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "margarita", 1)
	TriggerServerEvent('fz-limeysjob:server:Tirar10dolars')
    end)
end)

RegisterNetEvent('fz-limeysjob:client:Pinacolada', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'Get Pina Colada...', 2700, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "pinacolada", 1)
	TriggerServerEvent('fz-limeysjob:server:Tirar10dolars')
    end)
end)

RegisterNetEvent('fz-limeysjob:client:Screwdriver', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'Get Screwdriver...', 2700, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "screwdriver", 1)
	TriggerServerEvent('fz-limeysjob:server:Tirar10dolars')
    end)
end)

RegisterNetEvent('fz-limeysjob:client:Sangria', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'Get Sangria...', 2700, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "sangria", 1)
	TriggerServerEvent('fz-limeysjob:server:Tirar10dolars')
    end)
end)

RegisterNetEvent('fz-limeysjob:client:StrawberryMargarita', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'Get Strawberry Margarita...', 2700, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "strawmargarita", 1)
	TriggerServerEvent('fz-limeysjob:server:Tirar10dolars')
    end)
end)

RegisterNetEvent('fz-limeysjob:client:strawdaquiri', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'Get Strawberry Daquiri...', 2700, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "sangria", 1)
	TriggerServerEvent('fz-limeysjob:server:Tirar10dolars')
    end)
end)

----------------------------------------------
----------- Eat scenes and things -------------

RegisterNetEvent('fz-limeysjob:client:BeberCafe', function() 
    TriggerEvent('animations:client:EmoteCommandStart', {"burger"})
    QBCore.Functions.Progressbar('beber_cafe', 'Eating...', 2700, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent("QBCore:Server:SetMetaData", "hunger", QBCore.Functions.GetPlayerData().metadata["hunger"] + math.random(40, 70))
        TriggerServerEvent('hud:server:RelieveStress', math.random(30, 40))
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

RegisterNetEvent('fz-limeysjob:client:BeberCafe2', function() 
    TriggerEvent('animations:client:EmoteCommandStart', {"sandwich"})
    QBCore.Functions.Progressbar('beber_cafe', 'Eating...', 2700, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent("QBCore:Server:SetMetaData", "hunger", QBCore.Functions.GetPlayerData().metadata["hunger"] + math.random(40, 70))
        TriggerServerEvent('hud:server:RelieveStress', math.random(30, 40))
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

RegisterNetEvent('fz-limeysjob:client:coffee', function() 
    TriggerEvent('animations:client:EmoteCommandStart', {"coffee"})
    QBCore.Functions.Progressbar('beber_cafe', 'Drinking Coffee...', 2700, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent('hud:server:RelieveStress', math.random(10, 30))
        TriggerServerEvent('hud:server:RelieveStress', math.random(2, 4))
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

RegisterNetEvent('fz-limeysjob:client:ComerBolo', function() 
    TriggerEvent('animations:client:EmoteCommandStart', {"donut"})
    QBCore.Functions.Progressbar('beber_cafe', 'EATING CAKE...', 2700, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent("QBCore:Server:SetMetaData", "hunger", QBCore.Functions.GetPlayerData().metadata["hunger"] + math.random(40, 70))
        TriggerServerEvent('hud:server:SetWaterStress', math.random(2, 4))
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

RegisterNetEvent('fz-limeysjob:client:ComerPanquecas', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"sandwich"})
    QBCore.Functions.Progressbar('beber_cafe', 'EATING PANCAKE...', 2700, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent("QBCore:Server:SetMetaData", "water", QBCore.Functions.GetPlayerData().metadata["water"] + math.random(40, 70))
        TriggerServerEvent('hud:server:RelieveStress', math.random(2, 4))
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

RegisterNetEvent('fz-limeysjob:client:BeberRefrigerantes', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"cup"})
    QBCore.Functions.Progressbar('beber_cafe', 'EATING PANCAKE...', 2700, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent('hud:server:RelieveStress', math.random(10, 30))
        TriggerServerEvent('hud:server:RelieveStress', math.random(2, 4))
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

------------------------------------------------
----------- washbasin -------------------------

RegisterNetEvent('fz-limeysjob:client:washbasin', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"uncuff"})
    QBCore.Functions.Progressbar('name_here', 'WASHING HANDS...', 2700, false, true, { -- Name | Label | Time | useWhileDead | canCancel
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

-----------------------------------------------
------------- Trays ----------------------

RegisterNetEvent('fz-limeysjob:client:tray1', function()
    TriggerEvent("inventory:client:SetCurrentStash", "Traylimeys1")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "Traylimeys1", {
        maxweight = Config.TrayWeight,
        slots = Config.TraySlots,
    })
end)

RegisterNetEvent('fz-limeysjob:client:tray2', function()
    TriggerEvent("inventory:client:SetCurrentStash", "Traylimeys2")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "Traylimeys2", {
        maxweight = Config.TrayWeight,
        slots = Config.TraySlots,
    })
end)

RegisterNetEvent('fz-limeysjob:client:tray3', function()
    TriggerEvent("inventory:client:SetCurrentStash", "Traylimeys3")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "Traylimeys3", {
        maxweight = Config.TrayWeight,
        slots = Config.TraySlots,
    })
end)

RegisterNetEvent('fz-limeysjob:client:tray4', function()
    TriggerEvent("inventory:client:SetCurrentStash", "Traylimeys4")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "Traylimeys4", {
        maxweight = Config.TrayWeight,
        slots = Config.TraySlots,
    })
end)

RegisterNetEvent('fz-limeysjob:client:tray5', function()
    TriggerEvent("inventory:client:SetCurrentStash", "Traylimeys5")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "Traylimeys5", {
        maxweight = Config.TrayWeight,
        slots = Config.TraySlots,
    })
end)

RegisterNetEvent('fz-limeysjob:client:storge', function()
    TriggerEvent("inventory:client:SetCurrentStash", "Storage")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "Storage", {
        maxweight = 2000000,
        slots = 42,
    })
end)

for k, v in pairs(Config.Locations) do
    if Config.Locations[k].zoneEnable then
        blip = AddBlipForCoord(Config.Locations[k].blip)
        SetBlipAsShortRange(blip, true)
        SetBlipSprite(blip, 77)
        SetBlipColour(blip, Config.Locations[k].blipcolor)
        SetBlipScale(blip, 0.6)
        SetBlipDisplay(blip, 6)
        BeginTextCommandSetBlipName('STRING')
        AddTextComponentString("Limeys Job")
        EndTextCommandSetBlipName(blip)
    end
end

----------------------------------------------
-------- pass invoices ----------------------

RegisterNetEvent("fz-limeysjob:client:invoicePlayer", function()
    local dialog = exports['qb-input']:ShowInput({
        header = "Bill",
        submitText = "Bill Player",
        inputs = {
            {
                type = 'number',
                isRequired = true,
                name = 'id',
                text = 'paypal id'
            },
            {
                type = 'number',
                isRequired = true,
                name = 'amount',
                text = '$ amount!'
            }
        }
    })
    if dialog then
        if not dialog.id or not dialog.amount then return end
        TriggerServerEvent("fz-limeysjob:server:invoicePlayer", dialog.id, dialog.amount)
    end
end)
