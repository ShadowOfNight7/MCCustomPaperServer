tag @s add TheTurretor

execute as @e[type=armor_stand,tag=TheTurret] at @s if score @s turret_id = @a[tag=TheTurretor,limit=1] id run tag @e[tag=TheTurretor] add DespawnTurretor
execute as @e[type=armor_stand,tag=TheTurret] at @s if score @s turret_id = @a[tag=TheTurretor,limit=1] id run particle item{item:"armor_stand"} ~ ~1 ~ 0.5 1 0.5 0.1 30 normal
execute as @e[type=armor_stand,tag=TheTurret] at @s if score @s turret_id = @a[tag=TheTurretor,limit=1] id store result score @a[tag=TheTurretor,limit=1] turret_health run scoreboard players get @s turret_health
execute as @e[type=armor_stand,tag=TheTurret] at @s if score @s turret_id = @a[tag=TheTurretor,limit=1] id store result score @a[tag=TheTurretor,limit=1] turret_power run scoreboard players get @s turret_power
execute as @e[type=armor_stand,tag=TheTurret] at @s if score @s turret_id = @a[tag=TheTurretor,limit=1] id store result score @a[tag=TheTurretor,limit=1] turret_utility run scoreboard players get @s turret_utility
execute as @e[type=armor_stand,tag=TheTurret] at @s if score @s turret_id = @a[tag=TheTurretor,limit=1] id store result score @a[tag=TheTurretor,limit=1] turret_attack run scoreboard players get @s turret_attack
execute as @e[type=armor_stand,tag=TheTurret] at @s if score @s turret_id = @a[tag=TheTurretor,limit=1] id on vehicle on passengers if entity @s[type=interaction] run kill @s
execute as @e[type=armor_stand,tag=TheTurret] at @s if score @s turret_id = @a[tag=TheTurretor,limit=1] id on vehicle run kill @s
execute as @e[type=armor_stand,tag=TheTurret] at @s if score @s turret_id = @a[tag=TheTurretor,limit=1] id run kill @s

execute as @s[tag=!DespawnTurretor] at @s align xyz run summon interaction ~ ~ ~ {Passengers:[{id:"minecraft:armor_stand",Tags:["TheTurret","TheTurretInitial"],Invulnerable:true,Marker:false},{id:"minecraft:interaction",height:2}],height:0}
execute as @s[tag=!DespawnTurretor] at @s store result score @e[type=armor_stand,tag=TheTurretInitial] turret_id run scoreboard players get @s id
execute as @s[tag=!DespawnTurretor] at @s run scoreboard players set @e[type=armor_stand,tag=TheTurretInitial] turret.cooldown 20
execute as @s[tag=!DespawnTurretor] at @s run scoreboard players set @e[type=armor_stand,tag=TheTurretInitial] basenumber 2
execute as @s[tag=!DespawnTurretor] at @s if score @s turret_health matches ..10 run scoreboard players set @e[type=armor_stand,tag=TheTurretInitial] turret_health 10
execute as @s[tag=!DespawnTurretor] at @s if score @s turret_health matches 11.. store result score @e[type=armor_stand,tag=TheTurretInitial] turret_health run scoreboard players get @s turret_health
execute as @s[tag=!DespawnTurretor] at @s store result score @e[type=armor_stand,tag=TheTurretInitial] turret_attack run scoreboard players get @s turret_attack
execute as @s[tag=!DespawnTurretor] at @s store result score @e[type=armor_stand,tag=TheTurretInitial] turret_power run scoreboard players get @s turret_power
execute as @s[tag=!DespawnTurretor] at @s store result score @e[type=armor_stand,tag=TheTurretInitial] turret_utility run scoreboard players get @s turret_utility
execute as @s[tag=!DespawnTurretor] at @s as @e[type=armor_stand,tag=TheTurretInitial] at @s run scoreboard players operation @s turret_power /= @s basenumber
execute as @s[tag=!DespawnTurretor] at @s as @e[type=armor_stand,tag=TheTurretInitial] at @s run scoreboard players operation @s turret_attack /= @s basenumber
execute as @s[tag=!DespawnTurretor] at @s as @e[type=armor_stand,tag=TheTurretInitial] at @s run scoreboard players operation @s turret_utility /= @s basenumber
execute as @s[tag=!DespawnTurretor] at @s run scoreboard players set @s turret_health 0
execute as @s[tag=!DespawnTurretor] at @s run scoreboard players set @s turret_power 0
execute as @s[tag=!DespawnTurretor] at @s run scoreboard players set @s turret_utility 0
execute as @s[tag=!DespawnTurretor] at @s run scoreboard players set @s turret_attack 0
execute as @s[tag=!DespawnTurretor] at @s run tag @e[type=armor_stand,tag=TheTurretInitial] remove TheTurretInitial

execute as @s[tag=DespawnTurretor] at @s run scoreboard players set @s turret.cooldown 300

execute as @s[tag=!DespawnTurretor] at @s run scoreboard players set @s turret.cooldown 1200


tag @s remove DespawnTurretor
tag @s remove TheTurretor