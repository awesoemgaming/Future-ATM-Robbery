-----------
Config = {} -- DO NOT TOUCH
-----------

----------------------
--You MAY Edit below--
----------------------

Config.polcall = true -- This is for the custom cops call, so players can notify cops of something. It is not needed for this to work, you may disable this.

Config.polcommand = 'cops' -- This is the command to notify/call cops. Only if using the polcall option.

Config.money = 'cash' -- Change this to 'cash' or 'bank' This is where the money from the robbery goes unless you are using the blackmoney option.

Config.policejob = 'police' -- This is the name of the police job that will be notified of the robbery

Config.blackmoney = true -- If you want this to give a dirty cash item instead of normal cash, please change this to 'true'. If you have cash as an item in your server please set this to 'true' then change the blackmoneyitem to your cash item.

Config.blackmoneylow = 5 -- Change this to the lowest amount of dirty cash/cash as an item a player should get if using the blackmoney option

Config.blackmoneyhigh = 10 -- Change this to the highest amount of dirty cash/cash as an item a player should get if using the blackmoney option

Config.blackmoneyname = 'markedbills' -- Put the name of your dirty cash item here if using blackmoney option

Config.cashrobmessage = "Successfully robbed the ATM for $" -- (This does not matter if using the blackmoney option) This is the message that displays just before the cash you got, like if you robbed $500 it would say "Successfully robbed the ATM for $500"

Config.cashrobmsgtime = 3000 -- (This does not matter if using the blackmoney option) This is how long the 'Successfully robbed the ATM for $500' message is displayed for in milisecconds, so 300 = 3 secconds.

Config.blackmoneyrobmsgstart = "Successfully robbed the ATM for " -- (This does not matter if using cash option) This is the first part of the message that displays after robbing the atm.

Config.blackmoneymsgend = " dirty money bags!" -- this is the end of the message, so it will look like this. "Successfuly robbed the ATM for 10 dirty money bags!"

Config.blackmoneymsgtime = 3000 -- (This does not matter if using cash option) This is how long the 'Successfully robbed the ATM for $500' message is displayed for in milisecconds, so 300 = 3 secconds.

Config.cooldown = 10000 -- How long between robberies. Set in milisecconds, so 300000 = 5 minutes

Config.cooldownmesssage = "You Should Wait, The Cops Have Already Been Called. We Don't Wanna Get Caught!" -- This is the message that displays when trying to rob during teh cooldown

Config.cooldownmsgtime = 5000 -- This is how long the cooldown message will display on a user's screen in milisecconds, so 5000 = 5 secconds

Config.location = vector3(146.03, -1035.11, 29.34) -- Location for the atm(s). You can add more atm locations to rob here.

Config.clearmessage = "The Coast Is Clear. You Can Rob The ATM Again!" -- This is the message that displays telling the player they can rob the atm again.

Config.clearmsgtime = 3000 -- This is how long the 'you can rob it again' message will display on a user's screen in milisecconds, so 3000 = 3 secconds

Config.lowmoney = 500 -- The lowest amount of money you can get from the robbery

Config.highmoney = 1500 -- The highest amount of money you can get from the robbery

Config.duration = 15000 -- This is how long it takes to rob the atm. It goes by milisecconds, so 15000 = 15 secconds

Config.robkey = 47 -- What key to press to rob atm. This is set to press 'g' to rob the atm as of now.

Config.robtext = "~g~[G]~c~ - Rob The ATM" -- What it says when you get near the atm. Example: "Press 'G' To Rob ATM!"

Config.distance = 1.0 -- distance of how close you must be to the atm in order to rob it
