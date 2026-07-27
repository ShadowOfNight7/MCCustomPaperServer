execute as @s facing entity @e[type=silverfish,tag=WitherLaser,distance=..50,limit=1,sort=nearest] eyes unless entity @e[type=silverfish,tag=WitherLaser,distance=..1] run particle dust{color:[0,0,0],scale:1} ~ ~ ~ 0.1 0.1 0.1 0.2 5 force

execute as @s facing entity @e[type=silverfish,tag=WitherLaser,distance=..50,limit=1,sort=nearest] eyes if entity @e[type=player,distance=..1.5] as @p at @s run damage @s 5 magic by @e[type=wither,limit=1,sort=nearest] from @e[type=wither,limit=1,sort=nearest]

execute as @s facing entity @e[type=silverfish,tag=WitherLaser,distance=..50,limit=1,sort=nearest] eyes unless entity @e[type=silverfish,tag=WitherLaser,distance=..1] positioned ^ ^ ^0.5 run function gameify:enhanced_wither/wither_laser2 with entity @s
