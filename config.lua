config = {}
-- MAIN CONFIG
config.Mysql = 'mysql-async' -- "ghmattisql", "mysql-async"
config.esx = '1.2' -- 1.1 or 1.2 , 1.2 are v1final and esx legacy is compatible
config.css = 'new' -- new or old -- new = 4 column, old 2 column
config.logo = 'https://forum.cfx.re/uploads/default/original/4X/b/1/9/b196908c7e5dfcd60aa9dca0020119fa55e184cb.png' -- url of logo
config.esx_menu = true -- interaction menu if false, contextual menu
config.keybinds = 'F6' -- Keybinds
config.commands = 'interaction'

-- INVENTORY OX (WIP do not use, weapon armory will not work if you use ox inv, ill update soon for newer ESX (infinity))
config.useOxInventory = false -- will disable all built in inventory of renzu_jobs, and will use the ox_inventory data
-- INVENTORY OX

config.RandomAvatars = { -- if player pedshot is not uploaded yet, we will use Initials avatar
    [1] = {background = 'ffffff', color = '308BFF'},
    [2] = {background = 'E2E519', color = '222'},
    [3] = {background = 'FF306E', color = 'ffffff'},
    [4] = {background = 'F000FF', color = 'ffffff'},
    [5] = {background = '2F2730', color = 'ffffff'},
}

config.FreePaycheck = {
    ['ambulance'] = true,
    ['police'] = true
}

-- EXTRA CONFIG
config.useSociety = false -- if using esx_society, society money will transfer to owned database renzu_jobs.accounts (first load only) -- set this to false if you are unsure, and manually transfer your society money to this script
config.defaultjob = 'unemployed' -- will be use for firing employee
config.black_money_item = false -- if true you want to use a black_money as item not accounts from ESX

--IMAGE CONFIG
config.inventory = 'esx_inventoryhud' -- resource name of your inventory script, with image folder
config.inventoryImageUrl = 'https://cfx-nui-'..config.inventory..'/html/img/items/' -- a path from your inventory image -- verify the path
config.vehicleimage = 'https://raw.githubusercontent.com/renzuzu/carmap/main/carmap/vehicle/' -- URL of vehicle image or path, default git contains local car image and some addon car image
-- vehicleimage can be path ex. img/items, img/vehicle -- you have to mannually upload all to this resource folder or use existing folder from resource ex. https://cfx-nui-RESOURCENAME/html/img/items/
-- images are configured to set extension as png for items, and jpg for vehicles
-- if image config is setup incorrectly, default images from github will be use and your custom item will be not showed

-- INTERACTION CONFIG
config.showmarker = true -- show drawmarker to show location point
config.usePopui = false -- https://github.com/renzuzu/renzu_popui -- if false, will only use drawmarker with floating text and Native isControlPressed
--config.zonemanage = true -- manually trigger the  interaction via Zone management, ex. polyzone -- if this is enable, you wont see any marker without adding the zone to your polyzone

-- WEBHOOK
config.discordwebhook = true -- enable disable webhook logs to discord

config.citizen_interaction = {
    --police
    [1] = {label = 'Check ID', name = 'police:identity_card'},
    [2] = {label = 'Search', name = 'police:search'},
    [3] = {label = 'Handcuff', name = 'police:handcuff'},
    [4] = {label = 'Drag', name = 'police:drag'},
    [5] = {label = 'Put in Vehicle', name = 'police:put_in_vehicle'},
    [6] = {label = 'Drag out in Vehicle', name = 'police:out_the_vehicle'},
    [7] = {label = 'Fine', name = 'police:fine'},
    [8] = {label = 'Unpaid Bills', name = 'police:unpaid_bills'},
    [9] = {label = 'Jail', name = 'esx-qalle-jail:openJailMenu'},
    [10] = {label = 'Manage License', name = 'police:managelicense'},
	[11] = {label = 'Gunshot Residue', name = 'police:gsrtest'},
    [12] = {label = 'Drug Swab Test', name = 'police:drugtest'},
    [13] = {label = 'Breathalizer', name = 'police:breathalizer'},
    --EMS   
    [14] = {label = 'Check BP', name = 'checkbp1'},
    [15] = {label = 'Revive Citizen', name = 'ems:revive'},
   -- [16] = {label = 'Send to Emergency Room', name = 'sendtoemergencyroom'},
   -- [17] = {label = 'Revive Patient in Emergency Room', name = 'revive2'},
    [16] = {label = 'Heal Small Wounds', name = 'ems:small'},
    [17] = {label = 'Heal Big Wounds', name = 'ems:big'},
    [18] = {label = 'Search Dead in Area', name = 'ems:searchdeadinarea'},
    [19] = {label = 'Drag Dead Body', name = 'drag2'},
    [20]= {label = 'Carry', name = 'carry1'},
}
config.vehicle_interaction = {
    [1] = {label = 'Vehicle Information', name='police:vehicle_infos'},
    [2] = {label = 'Hijack', name='police:hijack'},
    [3] = {label = 'Impound', name='police:impound'},
    [4] = {label = 'Search Vehicle Plate#', name='police:searchdatabase'},

    [5] = {label = 'Hijack', name='mechanic:hijack'},
    [6] = {label = 'Clean', name='mechanic:clean'},
    [7] = {label = 'Scan ECU', name='mechanic:scanecu'},
    [8] = {label = 'Repair #1', name='mechanic:repair'},
    [9] = {label = 'Repair #2', name='mechanic:repair2'},
}

config.moneywashcoord = {
    entrance = vector3(259.70086669922,-782.91326904297,30.513477325439), 
    exit = vector3(1137.7464599609,-3198.9235839844,-39.665752410889)
}
config.MoneyWashOwner = 'police' -- job money income (tax) will go to this job, replace this to any job
config.MoneyWashTax = 0.05 -- 0.05 = 5% TAX, 0.1 = 10% , 0.5 50%
config.MoneyWash = {
    [1] = {coord = vector4(1122.3912353516,-3194.7260742188,-40.400051116943,354.4182434082), inuse = false},
    [2] = {coord = vector4(1123.9632568359,-3194.3732910156,-40.397888183594,15.791656494141), inuse = false},
    [3] = {coord = vector4(1125.5310058594,-3194.3220214844,-40.397579193115,0.35743966698647), inuse = false},
    [4] = {coord = vector4(1126.9295654297,-3194.3625488281,-40.397869110107,354.97473144531), inuse = false},
}
-- JOB Config
-- SAMPLE CONFIG
-- All Coordinates and permission for grades must be change for your own liking
config.Jobs = {
    -- example config for police job, you can copy the police config for other jobs
    ['police'] = {
        ['max_salary'] = 1000000, -- maximum ammount of salary can be changed from boss action
        ['bossmenu'] = {
            webhook = false, -- change this to your webhook link, if this a false, its mean no loggin at all, ex. 'https://discord.com/api/webhooks/883246462****'
            grade = 9, -- minimum grade to access
            coord = vector3(448.97439575195,-974.89404296875,30.689573287964),
            label = 'Boss Action',
            event = 'renzu_jobs:openbossmenu',
        },
        ['inventory'] = {
            ['Boss'] = { -- path inventory['Boss']
                webhook = false, -- change this to your webhook link, if this a false, its mean no loggin at all, ex. 'https://discord.com/api/webhooks/883246462****'
                grade = 9, -- minimum job grade can access this feature
                coord = vector3(451.96508789062,-973.236328125,30.689609527588),
                label = 'Boss Inventory',
                slots = 100,
                event = 'renzu_jobs:openinventory',
            },
            ['Personal'] = { -- path inventory['Personal'][identifier]
                webhook = false, -- false to not logs else a string of discord webhook link
                grade = 0,  
                coord = vector3(456.47772216797,-988.44299316406,30.689609527588),
                label = 'Personal Inventory',
                slots = 20,
                event = 'renzu_jobs:openinventory',
            },
            ['Stash'] = { -- path inventory['Stash']
                webhook = false, -- false to not logs else a string of discord webhook link
                grade = 0, -- minimum job grade can access this feature
                coord = vector3(459.76635742188,-979.64660644531,30.689588546753),
                label = 'Police Armory', -- same as stash
                slots = 20,
                event = 'renzu_jobs:openinventory',
            },
        },
        ['weapon_armory'] = {
            webhook = false, -- change this to your webhook link, if this a false, its mean no loggin at all, ex. 'https://discord.com/api/webhooks/883246462****'
            grade = 0, -- minimum job grade can access this feature
            coord = vector3(461.57052612305,-983.02404785156,30.689599990845),
            label = 'Weapon Armory',
            event = 'renzu_jobs:openweapons',
        },
        ['wardrobe'] = {
            grade = 0,
            coord = vector3(458.83407592773,-993.37579345703,30.689599990845),
            label = 'Wardrobe',
            event = 'renzu_jobs:openwardrobe',
        },
        ['shop'] = {
            [1] = {
                webhook = false, -- change this to your webhook link, if this a false, its mean no loggin at all, ex. 'https://discord.com/api/webhooks/883246462****'
                public = false, -- if shop is public or for this job only. (income money will go to this job money)
                grade = 0, -- minimum job grade can access this feature,
                ['items'] = {
                    [1] = {name = 'bread', label = 'Bread', value = 50},
                    [2] = {name = 'water', label = 'Water', value = false}, -- if false its free
                    [3] = {name = 'WEAPON_PISTOL', label = 'Pistol', value = 15000}, -- use capitalize for weapon to avoid bugs
                },
                label = 'Police Shop 1',
                coord = vector3(452.42401123047,-980.31774902344,30.689605712891),
                event = 'renzu_jobs:openshop',
            },
            [2] = {
                webhook = false, -- change this to your webhook link, if this a false, its mean no loggin at all, ex. 'https://discord.com/api/webhooks/883246462****'
                public = true, -- if shop is public or for this job only. (income money will go to this job money)
                grade = 0, -- minimum job grade can access this feature
                ['items'] = {
                    [1] = {name = 'bread', label = 'Bread', value = 50},
                    [2] = {name = 'water', label = 'Water', value = false}, -- if false its free
                    [3] = {name = 'WEAPON_PISTOL', label = 'PISTOL', value = 15000}, -- use capitalize for weapon to avoid bugs
                },
                label = 'Police Shop 2',
                coord = vector3(436.20028686523,-986.38391113281,30.689611434937),
                event = 'renzu_jobs:openshop',
            },
        },
        ['crafting'] = {
            webhook = false, -- change this to your webhook link, if this a false, its mean no loggin at all, ex. 'https://discord.com/api/webhooks/883246462****'
            grade = 0,
            coord = vector3(438.80059814453,-992.654296875,30.689607620239),
            label = 'Police Crafting Table',
            event = 'renzu_jobs:opencrafting',
            craftable = {
                ['bread'] = {name = 'bread', label = 'Bread', type = 'item', seconds = 50, -- index/array name must be the same with item name, so we can fetch it easily later
                    requirements = {
                        [1] = {name = 'bread', amount = 1},
                    },
                },
                ['WEAPON_PISTOL'] = {name = 'WEAPON_PISTOL', label = 'Pistol', type = 'weapon', seconds = 30,
                    requirements = {
                        [1] = {name = 'bread', amount = 1},
                        [2] = {name = 'water', amount = 1},
                        [3] = {name = 'lplparmor', amount = 1},
                    },
                },
            }  
        },
        ['vehicleshop'] = {
            webhook = false, -- change this to your webhook link, if this a false, its mean no loggin at all, ex. 'https://discord.com/api/webhooks/883246462****'
            grade = 0, -- minimum job grade can access this feature
            label = 'Vehicle Shop',
            coord = vector3(444.59100341797,-1014.3021240234,28.588003158569),
            event = 'renzu_jobs:openvehicleshop',
            vehicles = {
                [1] = {model = 'police', label = 'Police Sedan', value = 10000, grade = 0},
                [2] = {model = 'police2', label = 'Police Sedan 2', value = 5000, grade = 0},
                [3] = {model = 'police3', label = 'Police Sedan 3', value = 5000, grade = 0},
                -- [4] = {model = 'police', label = 'Police Sedan', value = 10000, grade = 0},
                -- [5] = {model = 'police2', label = 'Police Sedan 2', value = 5000, grade = 0},
                -- [6] = {model = 'police3', label = 'Police Sedan 3', value = 5000, grade = 0},
            }
        },
        ['garage'] = {
            unique = true, -- if true, only stored in this vehicle will show, false will show all owned_vehicles, true is good for job garage eg. police, false for everyone else gang etc..
            grade = 0, -- minimum job grade can access this feature
            label = 'Garage',
            coord = vector3(438.91528320312,-1013.6430664062,28.63551902771),
            spawn = vector4(435.22979736328,-1027.3572998047,28.454689025879,5.9837808609009),
            event = 'renzu_jobs:opengarage',
        },
        ['duty'] = {
            grade = 0,
            offdutyname = 'offpolice',
            coord = vector3(440.97512817383,-981.16265869141,30.689613342285),
            label = 'On/Off Duty',
            event = 'renzu_jobs:duty',
        },
        ['interaction'] = {
            ['Citizen Interaction'] = {
                [1] = {index = 1, grade = 0, type = 'citizen_interaction'},
                [2] = {index = 2, grade = 0, type = 'citizen_interaction'},
                [3] = {index = 3, grade = 0, type = 'citizen_interaction'},
                [4] = {index = 4, grade = 0, type = 'citizen_interaction'},
                [5] = {index = 5, grade = 0, type = 'citizen_interaction'},
                [6] = {index = 6, grade = 0, type = 'citizen_interaction'},
                [7] = {index = 7, grade = 0, type = 'citizen_interaction'},
                [8] = {index = 8, grade = 0, type = 'citizen_interaction'},
                [9] = {index = 9, grade = 0, type = 'citizen_interaction'},
                [10] = {index = 10, grade = 0, type = 'citizen_interaction'},
                [11]= {index = 11, grade = 0, type = 'citizen_interaction'},
                [12]= {index = 12, grade = 0, type = 'citizen_interaction'},
                [13]= {index = 13, grade = 0, type = 'citizen_interaction'},

            },
            ['Vehicle Interaction'] = {
                [1] = {index = 1, grade = 0, type = 'vehicle_interaction'},
                [2] = {index = 2, grade = 0, type = 'vehicle_interaction'},
                [3] = {index = 3, grade = 0, type = 'vehicle_interaction'},
                [4] = {index = 4, grade = 0, type = 'vehicle_interaction'},

            },
        },
        ['grade'] = { -- grade access , pay attention to the perms, grade int is the index number of array
            [0] = { -- example grade = 0, ex. cadet? lowest rank, grade can be found in job_grades database table
                access = {fire = false, withdraw = false, deposit = false, gradechange = false},
            },
            [1] = {
                access = {fire = false, withdraw = false, deposit = false, gradechange = false},
            },
            [2] = {
                access = {fire = false, withdraw = false, deposit = false, gradechange = false},
            },
            [3] = {
                access = {fire = false, withdraw = false, deposit = false, gradechange = false},
            },
            [4] = {
                access = {fire = false, withdraw = false, deposit = false, gradechange = false},
            },
            [5] = {
                access = {fire = false, withdraw = false, deposit = false, gradechange = false},
            },
            [6] = {
                access = {fire = false, withdraw = false, deposit = false, gradechange = true},
            },
            [7] = {
                access = {fire = false, withdraw = true, deposit = true, gradechange = true},
            },
            [8] = {
                access = {fire = true, withdraw = true, deposit = true, gradechange = true, givebonus = true},
            },
            [9] = {
                access = {fire = true, withdraw = true, deposit = true, gradechange = true, givebonus = true, salarychange = true},
            },
        },
    },

    -- other jobs sample
    ['mechanic'] = {
        ['max_salary'] = 1000000, -- maximum ammount of salary can be changed from boss action
        ['bossmenu'] = {
            webhook = false, -- change this to your webhook link, if this a false, its mean no loggin at all, ex. 'https://discord.com/api/webhooks/883246462****'
            grade = 7, -- minimum grade to access
            coord = vector3(-213.75379943848,-1334.8754882812,34.894416809082),
            label = 'Boss Action',
            event = 'renzu_jobs:openbossmenu',
        },
        ['inventory'] = {
            ['Boss'] = { -- path inventory['Boss']
                webhook = false, -- change this to your webhook link, if this a false, its mean no loggin at all, ex. 'https://discord.com/api/webhooks/883246462****'
                grade = 7, -- minimum job grade can access this feature
                coord = vector3(-212.38114929199,-1341.2818603516,34.894409179688),
                label = 'Boss Inventory',
                public = false,
                slots = 100,
                event = 'renzu_jobs:openinventory',
            },
            ['Personal'] = { -- path inventory['Personal'][identifier]
                webhook = false, -- change this to your webhook link, if this a false, its mean no loggin at all, ex. 'https://discord.com/api/webhooks/883246462****'
                grade = 0,  
                coord = vector3(-223.78016662598,-1319.9803466797,30.890405654907),
                label = 'Personal Inventory',
                public = false,
                slots = 20,
                event = 'renzu_jobs:openinventory',
            },
            ['Stash'] = { -- path inventory['Stash']
                webhook = false, -- change this to your webhook link, if this a false, its mean no loggin at all, ex. 'https://discord.com/api/webhooks/883246462****'
                grade = 0, -- minimum job grade can access this feature
                coord = vector3(-196.98460388184,-1314.7554931641,31.08936882019),
                label = 'Bennys Inventory', -- same as stash
                public = true, -- stash mode or public inventory
                slots = 20,
                event = 'renzu_jobs:openinventory',
            },
        },
        -- ['weapon_armory'] = { -- DISABLE weapon armory?
        --     grade = 0, -- minimum job grade can access this feature
        --     coord = vector3(461.57052612305,-983.02404785156,30.689599990845),
        --     label = 'Weapon Armory',
        --     event = 'renzu_jobs:openweapons',
        -- },
        ['wardrobe'] = {
            grade = 0,
            coord = vector3(-206.71696472168,-1331.5721435547,34.894359588623),
            label = 'Wardrobe',
            event = 'renzu_jobs:openwardrobe',
        },
        ['shop'] = {
            [1] = {
                webhook = false, -- change this to your webhook link, if this a false, its mean no loggin at all, ex. 'https://discord.com/api/webhooks/883246462****'
                public = true, -- if shop is public or for this job only. (income money will go to this job money)
                grade = 0, -- minimum job grade can access this feature
                ['items'] = {
                    [1] = {name = 'bread', label = 'Bread', value = 50},
                    [2] = {name = 'water', label = 'Water', value = false}, -- if false its free
                    [3] = {name = 'WEAPON_PISTOL', label = 'PISTOL', value = 15000}, -- use capitalize for weapon to avoid bugs
                },
                label = 'Bennys Shop 1',
                coord = vector3(-215.87023925781,-1317.8905029297,30.890377044678),
                event = 'renzu_jobs:openshop',
            },
            [2] = {
                webhook = false, -- change this to your webhook link, if this a false, its mean no loggin at all, ex. 'https://discord.com/api/webhooks/883246462****'
                public = true, -- if shop is public or for this job only. (income money will go to this job money)
                grade = 0, -- minimum job grade can access this feature
                ['items'] = {
                    [1] = {name = 'bread', label = 'Bread', value = 50},
                    [2] = {name = 'water', label = 'Water', value = false}, -- if false its free
                    [3] = {name = 'WEAPON_PISTOL', label = 'PISTOL', value = 15000}, -- use capitalize for weapon to avoid bugs
                },
                label = 'Bennys Shop 2',
                coord = vector3(-207.91415405273,-1342.0013427734,34.89436340332),
                event = 'renzu_jobs:openshop',
            },
        },
        ['crafting'] = {
            webhook = false, -- change this to your webhook link, if this a false, its mean no loggin at all, ex. 'https://discord.com/api/webhooks/883246462****'
            grade = 0,
            coord = vector3(-196.37414550781,-1318.5646972656,31.089338302612),
            label = 'Bennys Crafting Table',
            event = 'renzu_jobs:opencrafting',
            craftable = {
                ['turbo_sports'] = {name = 'turbo_sports', label = 'Turbo Sports', type = 'item', seconds = 150, -- index/array name must be the same with item name, so we can fetch it easily later
                    requirements = {
                        [1] = {name = 'steel', amount = 5},
                    },
                },
                ['WEAPON_PISTOL'] = {name = 'WEAPON_PISTOL', label = 'Pistol', type = 'weapon', seconds = 30,
                    requirements = {
                        [1] = {name = 'bread', amount = 1},
                        [2] = {name = 'water', amount = 1},
                        [3] = {name = 'lplparmor', amount = 1},
                    },
                },
            }  
        },
        ['vehicleshop'] = {
            webhook = false, -- change this to your webhook link, if this a false, its mean no loggin at all, ex. 'https://discord.com/api/webhooks/883246462****'
            grade = 0, -- minimum job grade can access this feature
            label = 'Vehicle Shop',
            coord = vector3(-205.29267883301,-1326.2426757812,30.890409469604),
            event = 'renzu_jobs:openvehicleshop',
            vehicles = {
                [1] = {model = 'elegy', label = 'Elegy Sports', value = 10000, grade = 0},
                [2] = {model = 'sanchez', label = 'Sanchez Sports', value = 5000, grade = 0},
            }
        },
        ['garage'] = {
            unique = true, -- if true, only stored in this vehicle will show, false will show all owned_vehicles, true is good for job garage eg. police, false for everyone else gang etc..
            grade = 0, -- minimum job grade can access this feature
            label = 'Garage',
            coord = vector3(-210.30662536621,-1309.2847900391,31.292116165161),
            spawn = vector4(-220.96159362793,-1291.4146728516,30.621912002563,219.47317504883),
            event = 'renzu_jobs:opengarage',
        },
        ['duty'] = {
            grade = 0,
            offdutyname = 'offmechanic',
            coord = vector3(-207.6012878418,-1337.5262451172,34.894355773926),
            label = 'On/Off Duty',
            event = 'renzu_jobs:duty',
        },
        ['grade'] = { -- grade access , pay attention to the perms, grade int is the index number of array
            [0] = { -- example grade = 0, ex. cadet? lowest rank, grade can be found in job_grades database table
                access = {fire = false, withdraw = false, deposit = false, gradechange = false},
            },
            [1] = {
                access = {fire = false, withdraw = false, deposit = false, gradechange = false},
            },
            [2] = {
                access = {fire = false, withdraw = false, deposit = false, gradechange = false},
            },
            [3] = {
                access = {fire = false, withdraw = false, deposit = false, gradechange = false},
            },
            [4] = {
                access = {fire = false, withdraw = false, deposit = false, gradechange = false},
            },
            [5] = {
                access = {fire = false, withdraw = false, deposit = false, gradechange = false},
            },
            [6] = {
                access = {fire = true, withdraw = true, deposit = true, gradechange = true, givebonus = true},
            },
            [7] = {
                access = {fire = true, withdraw = true, deposit = true, gradechange = true, givebonus = true, salarychange = true},
            },
        }
    },

    ['lostmc'] = { -- gang sample
        ['max_salary'] = 1000000, -- maximum ammount of salary can be changed from boss action
        ['bossmenu'] = {
            webhook = false, -- change this to your webhook link, if this a false, its mean no loggin at all, ex. 'https://discord.com/api/webhooks/883246462****'
            grade = 1, -- minimum grade to access
            coord = vector3(983.61138916016,-92.527420043945,74.852157592773),
            label = 'Boss Action',
            event = 'renzu_jobs:openbossmenu',
        },
        ['inventory'] = {
            ['Boss'] = { -- path inventory['Boss']
                webhook = false, -- change this to your webhook link, if this a false, its mean no loggin at all, ex. 'https://discord.com/api/webhooks/883246462****'
                grade = 1, -- minimum job grade can access this feature
                coord = vector3(987.14569091797,-92.860740661621,74.845687866211),
                label = 'Boss Inventory',
                public = false,
                slots = 100,
                event = 'renzu_jobs:openinventory',
            },
            ['Personal'] = { -- path inventory['Personal'][identifier]
                webhook = false, -- change this to your webhook link, if this a false, its mean no loggin at all, ex. 'https://discord.com/api/webhooks/883246462****'
                grade = 0,  
                coord = vector3(977.21374511719,-104.17129516602,74.845077514648),
                label = 'Personal Inventory',
                public = false,
                slots = 20,
                event = 'renzu_jobs:openinventory',
            },
            ['Stash'] = { -- path inventory['Stash']
                webhook = false, -- change this to your webhook link, if this a false, its mean no loggin at all, ex. 'https://discord.com/api/webhooks/883246462****'
                grade = 0, -- minimum job grade can access this feature
                coord = vector3(971.86309814453,-98.383483886719,74.846099853516),
                label = 'LostMc Inventory', -- same as stash
                public = true, -- stash mode or public inventory
                slots = 20,
                event = 'renzu_jobs:openinventory',
            },
        },
        ['weapon_armory'] = { -- DISABLE weapon armory?
            grade = 0, -- minimum job grade can access this feature
            coord = vector3(980.10980224609,-98.445304870605,74.844985961914),
            label = 'Weapon Armory',
            event = 'renzu_jobs:openweapons',
        },
        ['wardrobe'] = {
            grade = 0,
            coord = vector3(973.75256347656,-96.728889465332,74.869956970215),
            label = 'Wardrobe',
            event = 'renzu_jobs:openwardrobe',
        },
        ['shop'] = { -- multi shop
            [1] = {
                webhook = false, -- change this to your webhook link, if this a false, its mean no loggin at all, ex. 'https://discord.com/api/webhooks/883246462****'
                public = true, -- if shop is public or for this job only. (income money will go to this job money)
                grade = 0, -- minimum job grade can access this feature
                ['items'] = {
                    [1] = {name = 'bread', label = 'Bread', value = 50},
                    [2] = {name = 'water', label = 'Water', value = false}, -- if false its free
                    [3] = {name = 'WEAPON_PISTOL', label = 'PISTOL', value = 15000}, -- use capitalize for weapon to avoid bugs
                },
                label = 'LostMc Shop 1',
                coord = vector3(988.66870117188,-96.233024597168,74.84521484375),
                event = 'renzu_jobs:openshop',
            },
            [2] = {
                webhook = false, -- change this to your webhook link, if this a false, its mean no loggin at all, ex. 'https://discord.com/api/webhooks/883246462****'
                public = true, -- if shop is public or for this job only. (income money will go to this job money)
                grade = 0, -- minimum job grade can access this feature
                ['items'] = {
                    [1] = {name = 'bread', label = 'Bread', value = 50},
                    [2] = {name = 'water', label = 'Water', value = false}, -- if false its free
                    [3] = {name = 'WEAPON_PISTOL', label = 'PISTOL', value = 15000}, -- use capitalize for weapon to avoid bugs
                },
                label = 'LostMc Shop 2',
                coord = vector3(958.98858642578,-121.24058532715,74.963508605957),
                event = 'renzu_jobs:openshop',
            },
        },
        ['garage'] = {
            unique = true, -- if true, only stored in this vehicle will show, false will show all owned_vehicles, true is good for job garage eg. police, false for everyone else gang etc..
            grade = 0, -- minimum job grade can access this feature
            label = 'Garage',
            coord = vector3(986.25476074219,-106.7004776001,74.353157043457),
            spawn = vector4(970.5380859375,-114.37124633789,73.678535461426,219.50030517578),
            event = 'renzu_jobs:opengarage',
        },
        ['crafting'] = {
            webhook = false, -- change this to your webhook link, if this a false, its mean no loggin at all, ex. 'https://discord.com/api/webhooks/883246462****'
            grade = 0,
            coord = vector3(978.91638183594,-94.26042175293,74.868110656738),
            label = 'LostMC Crafting Table',
            event = 'renzu_jobs:opencrafting',
            craftable = {
                ['bread'] = {name = 'bread', label = 'Bread', type = 'item', seconds = 50, -- index/array name must be the same with item name, so we can fetch it easily later
                    requirements = {
                        [1] = {name = 'bread', amount = 1},
                    },
                },
                ['WEAPON_PISTOL'] = {name = 'WEAPON_PISTOL', label = 'Pistol', type = 'weapon', seconds = 10,
                    requirements = {
                        [1] = {name = 'bread', amount = 1},
                        [2] = {name = 'water', amount = 1},
                        [3] = {name = 'lplparmor', amount = 1},
                    },
                },
            }  
        },
        ['vehicleshop'] = {
            webhook = false, -- change this to your webhook link, if this a false, its mean no loggin at all, ex. 'https://discord.com/api/webhooks/883246462****'
            grade = 0, -- minimum job grade can access this feature
            label = 'Vehicle Shop',
            coord = vector3(965.66290283203,-118.93395996094,74.353141784668),
            event = 'renzu_jobs:openvehicleshop',
            vehicles = {
                [1] = {model = 'elegy', label = 'Elegy Sports', value = 10000, grade = 0},
                [2] = {model = 'sanchez', label = 'Sanchez Sports', value = 5000, grade = 0},
            }
        },
        ['grade'] = { -- grade access , pay attention to the perms, grade int is the index number of array
            [0] = { -- example grade = 0, ex. cadet? lowest rank, grade can be found in job_grades database table
                access = {fire = false, withdraw = false, deposit = false, gradechange = false},
            },
            [1] = {
                access = {fire = true, withdraw = true, deposit = true, gradechange = true, givebonus = true, salarychange = true},
            },
        }
    },
}