qb-core/shared/item.lua

	 --Fz-Limeys
	['coffee'] 				 		 = {['name'] = 'coffee', 			  	  		['label'] = 'Coffee', 					['weight'] = 200, 		['type'] = 'item', 		['image'] = 'np_coffee.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Pump 4 Caffeine'},
	["ecola"] 						= {["name"] = "ecola",  	    	 		["label"] = "eCola",		 			["weight"] = 100, 		["type"] = "item", 		["image"] = "ecola.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "", ['thirst'] = math.random(20, 30) },
	["sprunk"] 						= {["name"] = "sprunk",  	    	 		["label"] = "Sprunk",		 			["weight"] = 100, 		["type"] = "item", 		["image"] = "sprunk.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "", ['thirst'] = math.random(20, 30) },
	["plaindonut"]		 	     		= {["name"] = "plaindonut", 			  	["label"] = "Plain Donut",    	    		["created"] = nil,		["decay"] = 3.0,		["weight"] = 500, 		["type"] = "item", 	    ["image"] = "original_glazed_td_21.png",["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   		["combinable"] = nil,   ["description"] = "Plain Donut."},
	["chocdonut"]		 	         	= {["name"] = "chocdonut", 			  	  	["label"] = "Chocolate Donut",    	        ["created"] = nil,		["decay"] = 3.0,	    ["weight"] = 400, 		["type"] = "item", 	    ["image"] = "chocdonut.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   		["combinable"] = nil,   ["description"] = "Chocolate Donut."},
    ['rsmallglass'] 			 	 = {['name'] = 'rsmallglass', 			 		['label'] = 'Small Glass Cup',			['weight'] = 200, 		['type'] = 'item', 		['image'] = 'rsmallglass.png',			['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,   ['combinable'] = nil,   ['description'] = 'Glass Cup For Drinks'},
	['rcocktailglass'] 			 	 = {['name'] = 'rcocktailglass', 			 	['label'] = 'Glass For Cocktails',		['weight'] = 200, 		['type'] = 'item', 		['image'] = 'rcocktailglass.png',		['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,   ['combinable'] = nil,   ['description'] = 'Glass Cup For Cocktails'},
    ["glasscup"] 			 		 = {["name"] = "glasscup", 						["label"] = "Glass Cup", 				["weight"] = 400, 		["type"] = "item", 		["image"] = "glasscup.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Glass Cup"},
    ["amarettosour"] 				= {["name"] = "amarettosour",  	     		["label"] = "Amaretto Sour",	 		["weight"] = 200, 		["type"] = "item", 		["image"] = "amarettosour.png", ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = 'Amaretto Sour'},
	["bellini"] 					= {["name"] = "bellini",  	     			["label"] = "Bellini",	 				["weight"] = 200, 		["type"] = "item", 		["image"] = "bellini.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = 'Bellini' },

qb-core/shared/jobs.lua

    ['limeys'] = {
		label = 'Limey\'s Juice Shop',
		defaultDuty = true,
		grades = {
            ['0'] = { name = 'Recruit', payment = 50 },
			['1'] = { name = 'Novice', payment = 75 },
			['2'] = { name = 'Experienced', payment = 100 },
			['3'] = { name = 'Advanced', payment = 125 },
			['4'] = { name = 'Manager', isboss = true, payment = 150 },
        },
	},

Maps - https://www.gta5-mods.com/maps/mlo-limeys-juice-bar-fivem-add-on-sp

For Help Join Discord https://discord.gg/ZT33gygV
