tag @s add TargetTurret

execute as @a at @s if score @e[type=armor_stand,tag=TargetTurret,limit=1] turret_id = @s id run tag @s add TurretOwner

execute as @s at @s as @e[type=!interaction,type=!item,type=!item_display,type=!item_frame,type=!glow_item_frame,type=!#minecraft:boat,type=!minecart,type=!tnt_minecart,type=!tnt,type=!furnace_minecart,type=!block_display,type=!text_display,type=!#minecraft:impact_projectiles,type=!#minecraft:deflects_projectiles,type=!armor_stand,type=!#arrows,tag=!TurretOwner,distance=..25,nbt={HurtTime:0s},limit=1,sort=nearest] at @s run rotate @e[type=armor_stand,tag=TargetTurret,limit=1] facing ~ ~-0.7 ~

execute as @s at @s if score @s turret.cooldown matches ..0 if score @s turret_power matches 3.. if entity @e[type=!interaction,type=!item,type=!item_display,type=!item_frame,type=!glow_item_frame,type=!#minecraft:boat,type=!minecart,type=!tnt_minecart,type=!tnt,type=!furnace_minecart,type=!block_display,type=!text_display,type=!#minecraft:impact_projectiles,type=!#minecraft:deflects_projectiles,type=!armor_stand,type=!#arrows,tag=!TurretOwner,distance=..25] run function gameify:bows/turret_aim with entity @s

scoreboard players remove @s turret.cooldown 1
scoreboard players remove @s[scores={turret_power=1..}] turret_power 1
execute as @s at @s on vehicle on passengers if entity @s[type=interaction] on attacker run tag @s add TurretAttacked
execute if entity @a[tag=TurretAttacked] run scoreboard players remove @s turret_health 5
execute if entity @a[tag=TurretAttacked] as @s at @s on vehicle on passengers if entity @s[type=interaction] run data remove entity @s attack
execute if entity @a[tag=TurretAttacked] run tag @a[tag=TurretAttacked] remove TurretAttacked









execute if score @s turret_health matches ..0 on vehicle on passengers if entity @s[type=interaction] run kill @s
execute if score @s turret_health matches ..0 on vehicle run kill @s
execute if score @s turret_health matches ..0 run kill @s


execute as @e[type=item,nbt={Item:{id:"minecraft:redstone"}},distance=..2] at @s run function gameify:bows/turret_power with entity @s
execute as @e[type=item,nbt={Item:{id:"minecraft:redstone_block"}},distance=..2] at @s run function gameify:bows/turret_more_power with entity @s

execute unless score @s turret_health matches 150.. as @e[type=item,nbt={Item:{id:"minecraft:iron_ingot"}},distance=..2] at @s run function gameify:bows/iron_power with entity @s
execute unless score @s turret_health matches 150.. as @e[type=item,nbt={Item:{id:"minecraft:iron_block"}},distance=..2] at @s run function gameify:bows/iron_power2 with entity @s
execute as @s at @s if score @s turret_health matches 151.. run scoreboard players set @s turret_health 150

execute as @e[type=item,nbt={Item:{id:"minecraft:gold_ingot"}},distance=..2] at @s run function gameify:bows/iron_power with entity @s
execute as @e[type=item,nbt={Item:{id:"minecraft:gold_block"}},distance=..2] at @s run function gameify:bows/iron_power2 with entity @s



# execute as @e[type=item,nbt={Item:{id:"minecraft:gold_ingot"}},distance=..2] at @s run function gameify:bows/turret_power with entity @s
# execute as @e[type=item,nbt={Item:{id:"minecraft:gold_block"}},distance=..2] at @s run function gameify:bows/turret_more_power with entity @s

# execute as @e[type=item,nbt={Item:{id:"minecraft:lapis_lazuli"}},distance=..2] at @s run function gameify:bows/turret_power with entity @s
# execute as @e[type=item,nbt={Item:{id:"minecraft:lapis_block"}},distance=..2] at @s run function gameify:bows/turret_more_power with entity @s



tag @s remove TargetTurret
tag @a remove TurretOwner