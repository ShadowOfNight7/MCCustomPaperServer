say Loading...

scoreboard objectives add time dummy
scoreboard objectives add right_click dummy
scoreboard objectives add shifting custom:sneak_time
scoreboard objectives add shiftingCheck dummy
scoreboard objectives add posX dummy
scoreboard objectives add posY dummy
scoreboard objectives add posZ dummy
scoreboard objectives add random dummy

scoreboard objectives add globalScore dummy
scoreboard players set @a globalScore -2147483648

scoreboard objectives add id dummy

scoreboard objectives add deaths deathCount

scoreboard objectives add lives dummy

scoreboard objectives add health dummy

scoreboard objectives add clock dummy




team add skeletons
team modify skeletons friendlyFire false
team add creepers
team modify creepers friendlyFire false



team add Golden 'Golden Empire'
team modify Golden color yellow
team modify Golden friendlyFire false
team modify Golden seeFriendlyInvisibles true
team modify Golden deathMessageVisibility hideForOtherTeams

team add Royal "Royal Nation"
team modify Royal color dark_purple
team modify Royal friendlyFire false
team modify Royal seeFriendlyInvisibles true
team modify Golden deathMessageVisibility hideForOtherTeams

# team add Solace "Solace Coalition"
# team modify Solace color dark_green
# team modify Solace friendlyFire false
# team modify Solace seeFriendlyInvisibles true
# team modify Solace deathMessageVisibility hideForOtherTeams


scoreboard objectives add cooldown dummy
scoreboard players set @e cooldown 0

scoreboard objectives add cooldown2 dummy
scoreboard players set @e cooldown2 0


#High Priest
scoreboard objectives add highPriestAbility1 dummy
scoreboard players set @e highPriestAbility1 0

scoreboard objectives add highPriestTraitor dummy
scoreboard players set @e highPriestTraitor 0

scoreboard objectives add highPriestTraitorNum dummy
scoreboard players set @e highPriestTraitorNum 0

#Emperor
scoreboard objectives add exile trigger
scoreboard objectives add placeFlag trigger

scoreboard objectives add flagHealth dummy

scoreboard objectives add flagNumber dummy


#Occultist
scoreboard objectives add occultistAbility1 dummy
scoreboard players set @e occultistAbility1 0

scoreboard objectives add occultistAbility2 dummy
scoreboard players set @e occultistAbility2 0

#False Prophet
scoreboard objectives add reveal trigger

scoreboard objectives add conceal trigger

#Knight
scoreboard objectives add knightAbility1 dummy
scoreboard players set @e knightAbility1 0
