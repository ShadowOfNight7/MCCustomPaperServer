tag @s add TargetTurret

execute as @a at @s if score @e[type=armor_stand,tag=TargetTurret,limit=1] turret_id = @s id run tag @s add TurretOwner

execute as @s at @s positioned ~ ~0.5 ~ run rotate @s facing entity @e[type=!item,type=!item_display,type=!item_frame,type=!glow_item_frame,type=!#minecraft:boat,type=!minecart,type=!tnt_minecart,type=!tnt,type=!furnace_minecart,type=!block_display,type=!text_display,type=!#minecraft:impact_projectiles,type=!#minecraft:deflects_projectiles,type=!armor_stand,type=!#arrows,tag=!TurretOwner,distance=..25,limit=1,sort=nearest] eyes

execute as @s at @s if score @s turret.cooldown matches ..0 if entity @e[type=!item,type=!item_display,type=!item_frame,type=!glow_item_frame,type=!#minecraft:boat,type=!minecart,type=!tnt_minecart,type=!tnt,type=!furnace_minecart,type=!block_display,type=!text_display,type=!#minecraft:impact_projectiles,type=!#minecraft:deflects_projectiles,type=!armor_stand,type=!#arrows,tag=!TurretOwner,distance=..25] run function gameify:bows/turret_aim with entity @s

scoreboard players remove @s turret.cooldown 1

tag @s remove TargetTurret
tag @a remove TurretOwner