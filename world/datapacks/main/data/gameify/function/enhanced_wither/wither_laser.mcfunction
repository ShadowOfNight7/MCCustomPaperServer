execute as @s at @s positioned ~ ~2 ~ facing entity @e[type=silverfish,tag=WitherLaser,distance=..50,limit=1,sort=nearest] feet unless entity @e[type=silverfish,tag=WitherLaser,distance=..1] run particle dust{color:[0,0,0],scale:1} ~ ~ ~ 0.1 0.1 0.1 0.2 5 force
execute as @s at @s positioned ~ ~2 ~ facing entity @e[type=silverfish,tag=WitherLaser,distance=..50,limit=1,sort=nearest] feet unless entity @e[type=silverfish,tag=WitherLaser,distance=..1] positioned ^ ^ ^0.5 run function gameify:enhanced_wither/wither_laser2 with entity @s

