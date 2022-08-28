Citizen.CreateThread(function()

    exports['qb-target']:AddBoxZone("PopCoffee", vector3(251.77593, -1023.297, 29.239933), 0.6, 1.4, {
        name = "PopCoffee",
        heading = 340,
        debugpoly = false,
    }, {
        options = {
            {  
            event = "Coffee:Menu",
            icon = "fas fa-coffee",
            label = "Pour Coffee",
            job = "limeys",
            canInteract = function()
                if not onDuty then
                    return false
                else
                    return true
                end
            end,
        },
    },
    distance = 1.2
})

exports['qb-target']:AddBoxZone("PopDrink", vector3(251.77757, -1021.027, 29.535633), 0.6, 1.4, {
    name = "PopDrink",
    heading = 340,
    debugpoly = false,
}, {
    options = {
        {  
        event = "fz-colaitem",
        icon = "fas fa-coffee",
        label = "Pour Drink",
        job = "limeys",
        canInteract = function()
            if not onDuty then
                return false
            else
                return true
            end
        end,
    },
},
distance = 1.2
})

exports['qb-target']:AddBoxZone("Glass", vector3(252.26612, -1019.901, 28.621974), 0.6, 0.6, {
    name = "Glass",
    heading = 340,
    debugpoly = false,
}, {
    options = {
        {  
        event = "Cocktails:Menu",
        icon = "fas fa-Glass",
        label = "Cocktails",
        job = "limeys",
        canInteract = function()
            if not onDuty then
                return false
            else
                return true
            end
        end,
    },
},
distance = 1.2
})

exports['qb-target']:AddBoxZone("Coktils", vector3(251.46157, -1021.539, 30.26073), 0.6, 1.4, {
    name = "Glass",
    heading = 340,
    debugpoly = false,
}, {
    options = {
        {  
        event = "fz-limeysjob:client:GlassItams",
        icon = "fas fa-Glass",
        label = "Glass",
        job = "limeys",
        canInteract = function()
            if not onDuty then
                return false
            else
                return true
            end
        end,
    },
},
distance = 1.2
})

    exports['qb-target']:AddBoxZone("limeys-Shop", vector3(252.71206, -1018.714, 29.542142), 0.6, 0.6, {
        name = "limeys-Shop",
        heading = 340,
        debugpoly = false,
    }, {
        options = {
            {  
            event = "fz-Limeysjob:Open",
            icon = "fa fa-shop",
            label = "Open Shop",
            job = "limeys",
            canInteract = function()
                if not onDuty then
                    return false
                else
                    return true
                end
            end,
        },
    },
    distance = 1.2
})

exports['qb-target']:AddBoxZone("limeys-Dount", vector3(254.16184, -1016.786, 29.820423), 0.6, 0.6, {
    name = "limeys-dount",
    heading = 340,
    debugpoly = false,
}, {
    options = {
        {  
        event = "fz:dount:Menu",
        icon = "fa fa-shop",
        label = "Dount",
        job = "limeys",
        canInteract = function()
            if not onDuty then
                return false
            else
                return true
            end
        end,
    },
},
distance = 1.2
})



    exports['qb-target']:AddBoxZone("limeys-tray1", vector3(254.10873, -1020.788, 29.536867), 1, 2, {
        name = "limeys-tray1",
        heading = 340,
        debugpoly = false,
    }, {
        options = {
            {  
            event = "fz-limeysjob:client:tray1",
            icon = "fas fa-clipboard",
            label = "Tray - 1",
            },
        },
        distance = 1.5
    })

    exports['qb-target']:AddBoxZone("limeys service", vector3(253.21481, -1022.941, 30.060741), 0.6, 0.6, {
        name = "limeys-service",
        heading = 250,
        debugpoly = false,
    }, {
        options = {
            {  
            event = "fz-limeysjob:On",
            icon = "fas fa-clipboard",
            label = "Clock In/Out",
            job = "limeys",
            },
        },
        distance = 1.5
    })

    exports['qb-target']:AddBoxZone("bahma-register1", vector3(253.50878, -1022.185, 30.085725), 0.6, 0.6, {
        name = "limeys-register",
        heading = 340,
        debugpoly = false,
    }, {
        options = {
            {  
            event = "fz-limeysjob:client:invoicePlayer",
            icon = "fas fa-clipboard",
            label = "Charge Customer",
            job = "limeys",
            canInteract = function()
                if not onDuty then
                    return false
                else
                    return true
                end
            end,
        },
    },
    distance = 1.2
})



end)
