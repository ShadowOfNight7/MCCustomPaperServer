execute as @s at @s run bossbar add ender_shield "Shield"
bossbar set ender_shield color blue
bossbar set ender_shield max 12000
execute as @a at @s in the_end if entity @s[x=0] run bossbar set ender_shield players @a
bossbar set ender_shield style progress
execute as @s at @s store result bossbar ender_shield value run scoreboard players get @s posX

execute as @s at @s as @e[type=enderman,distance=..200,nbt={HurtTime:9s}] at @s run scoreboard players remove @e[type=ender_dragon,limit=1] posX 100

execute as @s[nbt={Invulnerable:false}] at @s run data merge entity @s {Invulnerable:true}

scoreboard players remove @e[tag=EndCrystalMarker] random 1
scoreboard players add @s[scores={posX=..11999}] posX 1
scoreboard players add @s posY 1
scoreboard players add @s posZ 1