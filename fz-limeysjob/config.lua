Config = Config or {}

Config.link = "qb-inventory/html/images/" --Set this to the image directory of your inventory script

Config.Vehicle = 'baller4'

Config.Locations = {
    [1] = {
		zoneEnable = true,
        label = "LimeysJob", -- Set this to the required job
        zones = {
			vector2(1558.0170898438, 6442.4106445312),
			vector2(1601.52734375, 6424.2348632812),
			vector2(1610.9509277344, 6449.2001953125),
			vector2(1613.7552490234, 6464.6137695312),
			vector2(1575.8428955078, 6482.0229492188)
        },
		blip = vector3(259.00552, -1022.574, 29.316602),
		blipcolor = 5,
    },
}

--// Items Needed For Making Coffee \\--
Config.CoffeeItems = {
    [1] = 'coffeebeans',
    [2] = 'coffeecup',
}

Config.Rsmallglassitems = {
    [1] = 'rsmallglass',
}

Config.BeansItemCoffee = 'coffeebeans'

Config.CupCoffeeItem = 'coffeecup'

Config.Coffee = 'coffee'

Config.Rsmallglass = 'rsmallglass'

Config.Cola = 'ecola'

Config.Sprunk = 'sprunk'

Config.Glasscup = 'glasscup'

Config.Amarettosour = 'amarettosour'

Config.Bellini = 'bellini'

Config.Cosmopolitan = 'cosmopolitan'

Config.Rcocktailglass = 'rcocktailglass'

Config.Plaindonut = 'plaindonut'

Config.Chocdonut = 'chocdonut'

Config.Items = {
    label = "Limeys Shop",
    slots = 4,
    items = {
        [1] = {
            name = "coffeecup",
            price = 5,
            amount = 5,
            info = {},
            type = "item",
            slot = 1,
        },
        [2] = {
            name = "coffeebeans",
            price = 5,
            amount = 5,
            info = {},
            type = "item",
            slot = 2,
        },
        [3] = {
            name = "plaindonut",
            price = 5,
            amount = 5,
            info = {},
            type = "item",
            slot = 3,
        },
    }
}

Config.TraySlots = 20 -- Number of slots for the board
Config.TrayWeight = 20000 -- board weight