execute as @s at @s as @a[distance=..500] at @s run clear @s #beds
execute as @s at @s as @a[distance=..500] at @s run clear @s respawn_anchor


execute as @s[scores={time=350..}] store result score @s random run random value 1..2

execute as @s[scores={time=350..}] at @s if score @s random matches 1..2 run summon dragon_fireball ~ ~5 ~ {Tags:["TrackingDragonFireball"],Motion:[0d,0.5d,0d]}
execute as @s[scores={time=350..}] at @s if score @s random matches 1..2 run summon dragon_fireball ~ ~5 ~ {Tags:["TrackingDragonFireball"],Motion:[0d,0.5d,0d]}
execute as @s[scores={time=350..}] at @s if score @s random matches 1..2 run summon dragon_fireball ~ ~5 ~ {Tags:["TrackingDragonFireball"],Motion:[0d,0.5d,0d]}

execute as @s[scores={time=350..}] run scoreboard players set @s time 100

execute as @s[tag=!Phase3] at @s store result score @s health run data get entity @s Health 10000
execute as @s[tag=!Phase3,scores={health=..500000}] at @s run scoreboard players set @e[type=marker,tag=!AliveEndCrystal] random 8790
execute as @s[tag=!Phase3,scores={health=..500000}] at @s run tag @s add Phase3

execute as @s[tag=!Phase2,scores={health=..1000000}] at @s run scoreboard players set @s posX 12000
execute as @s[tag=!Phase2,scores={health=..1000000}] at @s run tag @s add Phase2

execute as @s[scores={posX=1..},nbt={Invulnerable:false}] at @s in the_end run tellraw @a ["A shield has been formed! Kill endermen to weaken it!"]
execute as @s[scores={posX=1..},nbt={Invulnerable:false}] at @s in the_end run scoreboard players set @s posY 550
execute as @s[scores={posX=1..},nbt={Invulnerable:false}] at @s in the_end run scoreboard players set @s posZ 0

execute as @s[scores={posX=1..}] at @s run function gameify:enhanced_ender_dragon/phase2 with entity @s
execute as @s[scores={posX=..0},nbt={Invulnerable:true}] at @s run data merge entity @s {Invulnerable:false}
execute as @s[scores={posX=..0}] at @s run bossbar remove ender_shield

execute as @s[scores={posY=600..}] at @s positioned 0 100 0 run function gameify:enhanced_ender_dragon/enhanced_eye with entity @s
execute as @s[scores={posY=600..}] at @s positioned 0 100 0 run function gameify:enhanced_ender_dragon/enhanced_eye with entity @s
execute as @s[scores={posY=600..}] at @s positioned 0 100 0 run function gameify:enhanced_ender_dragon/enhanced_eye with entity @s
execute as @s[scores={posY=600..}] at @s positioned 0 100 0 run function gameify:enhanced_ender_dragon/enhanced_eye with entity @s
execute as @s[scores={posY=600..}] at @s positioned 0 100 0 run function gameify:enhanced_ender_dragon/enhanced_eye with entity @s
execute as @s[scores={posY=600..}] at @s run scoreboard players set @s posY 0

execute as @s[scores={posZ=30..}] at @s run function gameify:enhanced_ender_dragon/dragon_laser with entity @s
execute as @s[scores={posZ=30..}] at @s run scoreboard players set @s posZ 0

execute as @e[tag=DragonLaser] at @s run function gameify:enhanced_ender_dragon/dragon_laser2 with entity @s