execute as @s[nbt={HurtTime:9s}] at @s if data entity @s equipment.head.components."minecraft:custom_data".absorption store result score @s armorPassive.absorption run data get entity @s equipment.head.components."minecraft:custom_data".absorption
execute as @s[nbt={HurtTime:9s}] at @s if data entity @s equipment.head.components."minecraft:custom_data".absorption run function gameify:plating/armor_passive_absorption with entity @s

execute as @s[nbt={HurtTime:9s}] at @s if data entity @s equipment.chest.components."minecraft:custom_data".absorption store result score @s armorPassive.absorption run data get entity @s equipment.chest.components."minecraft:custom_data".absorption
execute as @s[nbt={HurtTime:9s}] at @s if data entity @s equipment.chest.components."minecraft:custom_data".absorption run function gameify:plating/armor_passive_absorption with entity @s

execute as @s[nbt={HurtTime:9s}] at @s if data entity @s equipment.legs.components."minecraft:custom_data".absorption store result score @s armorPassive.absorption run data get entity @s equipment.legs.components."minecraft:custom_data".absorption
execute as @s[nbt={HurtTime:9s}] at @s if data entity @s equipment.legs.components."minecraft:custom_data".absorption run function gameify:plating/armor_passive_absorption with entity @s

execute as @s[nbt={HurtTime:9s}] at @s if data entity @s equipment.feet.components."minecraft:custom_data".absorption store result score @s armorPassive.absorption run data get entity @s equipment.feet.components."minecraft:custom_data".absorption
execute as @s[nbt={HurtTime:9s}] at @s if data entity @s equipment.feet.components."minecraft:custom_data".absorption run function gameify:plating/armor_passive_absorption with entity @s

execute as @s[scores={armorPassive.absorption.cooldown=..800}] at @s run scoreboard players add @s armorPassive.absorption.cooldown 1


execute as @s at @s if data entity @s equipment.head.components."minecraft:custom_data".slowness run effect give @s slowness 2 0 true
execute as @s at @s if data entity @s equipment.chest.components."minecraft:custom_data".slowness run effect give @s slowness 2 0 true
execute as @s at @s if data entity @s equipment.legs.components."minecraft:custom_data".slowness run effect give @s slowness 2 0 true
execute as @s at @s if data entity @s equipment.feet.components."minecraft:custom_data".slowness run effect give @s slowness 2 0 true

execute as @s[scores={playerhit=1}] at @s if data entity @s equipment.head.components."minecraft:custom_data".experience run summon experience_orb ~ ~ ~ {Value:1,Tags:["ExperienceArmor"]}
execute as @s[scores={playerhit=1}] at @s if data entity @s equipment.head.components."minecraft:custom_data".experience store result entity @e[type=experience_orb,tag=ExperienceArmor,limit=1,sort=nearest] Value short 1 run data get entity @s equipment.head.components."minecraft:custom_data".experience 1
execute as @s[scores={playerhit=1}] at @s if data entity @s equipment.chest.components."minecraft:custom_data".experience run summon experience_orb ~ ~ ~ {Value:1,Tags:["ExperienceArmor1"]}
execute as @s[scores={playerhit=1}] at @s if data entity @s equipment.chest.components."minecraft:custom_data".experience store result entity @e[type=experience_orb,tag=ExperienceArmor1,limit=1,sort=nearest] Value short 1 run data get entity @s equipment.chest.components."minecraft:custom_data".experience 1
execute as @s[scores={playerhit=1}] at @s if data entity @s equipment.legs.components."minecraft:custom_data".experience run summon experience_orb ~ ~ ~ {Value:1,Tags:["ExperienceArmor2"]}
execute as @s[scores={playerhit=1}] at @s if data entity @s equipment.legs.components."minecraft:custom_data".experience store result entity @e[type=experience_orb,tag=ExperienceArmor2,limit=1,sort=nearest] Value short 1 run data get entity @s equipment.legs.components."minecraft:custom_data".experience 1
execute as @s[scores={playerhit=1}] at @s if data entity @s equipment.feet.components."minecraft:custom_data".experience run summon experience_orb ~ ~ ~ {Value:1,Tags:["ExperienceArmor3"]}
execute as @s[scores={playerhit=1}] at @s if data entity @s equipment.feet.components."minecraft:custom_data".experience store result entity @e[type=experience_orb,tag=ExperienceArmor3,limit=1,sort=nearest] Value short 1 run data get entity @s equipment.feet.components."minecraft:custom_data".experience 1

execute as @s[scores={playerhit=1}] at @s if data entity @s equipment.head.components."minecraft:custom_data".experience run tag @e[type=experience_orb,tag=ExperienceArmor] remove ExperienceArmor
execute as @s[scores={playerhit=1}] at @s if data entity @s equipment.chest.components."minecraft:custom_data".experience run tag @e[type=experience_orb,tag=ExperienceArmor] remove ExperienceArmor1
execute as @s[scores={playerhit=1}] at @s if data entity @s equipment.legs.components."minecraft:custom_data".experience run tag @e[type=experience_orb,tag=ExperienceArmor] remove ExperienceArmor2
execute as @s[scores={playerhit=1}] at @s if data entity @s equipment.feet.components."minecraft:custom_data".experience run tag @e[type=experience_orb,tag=ExperienceArmor] remove ExperienceArmor3

execute as @s at @s if data entity @s equipment.head.components."minecraft:custom_data".resistance store result score @s itemStats run data get entity @s equipment.head.components."minecraft:custom_data".resistance 10
execute as @s at @s if data entity @s equipment.head.components."minecraft:custom_data".resistance if score @s itemStats matches 35 if score @s resistanceCooldown matches ..0 run effect give @s resistance 5 0 false
execute as @s at @s if data entity @s equipment.head.components."minecraft:custom_data".resistance if score @s itemStats matches 35 if score @s resistanceCooldown matches ..0 run scoreboard players set @s resistanceCooldown 400
execute as @s at @s if data entity @s equipment.head.components."minecraft:custom_data".resistance if score @s itemStats matches 35 if score @s resistanceCooldown matches 1.. run scoreboard players remove @s resistanceCooldown 1

execute as @s at @s if data entity @s equipment.chest.components."minecraft:custom_data".resistance store result score @s itemStats run data get entity @s equipment.chest.components."minecraft:custom_data".resistance 10
execute as @s at @s if data entity @s equipment.chest.components."minecraft:custom_data".resistance if score @s itemStats matches 35 if score @s resistanceCooldown matches ..0 run effect give @s resistance 5 0 false
execute as @s at @s if data entity @s equipment.chest.components."minecraft:custom_data".resistance if score @s itemStats matches 35 if score @s resistanceCooldown matches ..0 run scoreboard players set @s resistanceCooldown 400
execute as @s at @s if data entity @s equipment.chest.components."minecraft:custom_data".resistance if score @s itemStats matches 35 if score @s resistanceCooldown matches 1.. run scoreboard players remove @s resistanceCooldown 1

execute as @s at @s if data entity @s equipment.legs.components."minecraft:custom_data".resistance store result score @s itemStats run data get entity @s equipment.legs.components."minecraft:custom_data".resistance 10
execute as @s at @s if data entity @s equipment.legs.components."minecraft:custom_data".resistance if score @s itemStats matches 35 if score @s resistanceCooldown matches ..0 run effect give @s resistance 5 0 false
execute as @s at @s if data entity @s equipment.legs.components."minecraft:custom_data".resistance if score @s itemStats matches 35 if score @s resistanceCooldown matches ..0 run scoreboard players set @s resistanceCooldown 400
execute as @s at @s if data entity @s equipment.legs.components."minecraft:custom_data".resistance if score @s itemStats matches 35 if score @s resistanceCooldown matches 1.. run scoreboard players remove @s resistanceCooldown 1

execute as @s at @s if data entity @s equipment.feet.components."minecraft:custom_data".resistance store result score @s itemStats run data get entity @s equipment.feet.components."minecraft:custom_data".resistance 10
execute as @s at @s if data entity @s equipment.feet.components."minecraft:custom_data".resistance if score @s itemStats matches 35 if score @s resistanceCooldown matches ..0 run effect give @s resistance 5 0 false
execute as @s at @s if data entity @s equipment.feet.components."minecraft:custom_data".resistance if score @s itemStats matches 35 if score @s resistanceCooldown matches ..0 run scoreboard players set @s resistanceCooldown 400
execute as @s at @s if data entity @s equipment.feet.components."minecraft:custom_data".resistance if score @s itemStats matches 35 if score @s resistanceCooldown matches 1.. run scoreboard players remove @s resistanceCooldown 1



execute as @s at @s if data entity @s equipment.head.components."minecraft:custom_data".barrier run function gameify:plating/armor_passive_barrier_head with entity @s
execute as @s at @s if data entity @s equipment.chest.components."minecraft:custom_data".barrier run function gameify:plating/armor_passive_barrier_chest with entity @s
execute as @s at @s if data entity @s equipment.legs.components."minecraft:custom_data".barrier run function gameify:plating/armor_passive_barrier_legs with entity @s
execute as @s at @s if data entity @s equipment.feet.components."minecraft:custom_data".barrier run function gameify:plating/armor_passive_barrier_feet with entity @s
tag @a[tag=BarriedDamage] remove BarriedDamage


execute as @s[nbt={HurtTime:9s}] at @s if data entity @s equipment.head.components."minecraft:custom_data".blindness store result score @s armorPassive.absorption run data get entity @s equipment.head.components."minecraft:custom_data".blindness
execute as @s[nbt={HurtTime:9s}] at @s if data entity @s equipment.head.components."minecraft:custom_data".blindness run function gameify:plating/armor_passive_blindness with entity @s

execute as @s[nbt={HurtTime:9s}] at @s if data entity @s equipment.chest.components."minecraft:custom_data".blindness store result score @s armorPassive.absorption run data get entity @s equipment.chest.components."minecraft:custom_data".blindness
execute as @s[nbt={HurtTime:9s}] at @s if data entity @s equipment.chest.components."minecraft:custom_data".blindness run function gameify:plating/armor_passive_blindness with entity @s

execute as @s[nbt={HurtTime:9s}] at @s if data entity @s equipment.legs.components."minecraft:custom_data".blindness store result score @s armorPassive.absorption run data get entity @s equipment.legs.components."minecraft:custom_data".blindness
execute as @s[nbt={HurtTime:9s}] at @s if data entity @s equipment.legs.components."minecraft:custom_data".blindness run function gameify:plating/armor_passive_blindness with entity @s

execute as @s[nbt={HurtTime:9s}] at @s if data entity @s equipment.feet.components."minecraft:custom_data".blindness store result score @s armorPassive.absorption run data get entity @s equipment.feet.components."minecraft:custom_data".blindness
execute as @s[nbt={HurtTime:9s}] at @s if data entity @s equipment.feet.components."minecraft:custom_data".blindness run function gameify:plating/armor_passive_blindness with entity @s


execute as @s[nbt={HurtTime:9s}] at @s if data entity @s equipment.head.components."minecraft:custom_data".thorns store result score @s armorPassive.absorption run data get entity @s equipment.head.components."minecraft:custom_data".thorns
execute as @s[nbt={HurtTime:9s}] at @s if data entity @s equipment.head.components."minecraft:custom_data".thorns run function gameify:plating/armor_passive_thorns with entity @s

execute as @s[nbt={HurtTime:9s}] at @s if data entity @s equipment.chest.components."minecraft:custom_data".thorns store result score @s armorPassive.absorption run data get entity @s equipment.chest.components."minecraft:custom_data".thorns
execute as @s[nbt={HurtTime:9s}] at @s if data entity @s equipment.chest.components."minecraft:custom_data".thorns run function gameify:plating/armor_passive_thorns with entity @s

execute as @s[nbt={HurtTime:9s}] at @s if data entity @s equipment.legs.components."minecraft:custom_data".thorns store result score @s armorPassive.absorption run data get entity @s equipment.legs.components."minecraft:custom_data".thorns
execute as @s[nbt={HurtTime:9s}] at @s if data entity @s equipment.legs.components."minecraft:custom_data".thorns run function gameify:plating/armor_passive_thorns with entity @s

execute as @s[nbt={HurtTime:9s}] at @s if data entity @s equipment.feet.components."minecraft:custom_data".thorns store result score @s armorPassive.absorption run data get entity @s equipment.feet.components."minecraft:custom_data".thorns
execute as @s[nbt={HurtTime:9s}] at @s if data entity @s equipment.feet.components."minecraft:custom_data".thorns run function gameify:plating/armor_passive_thorns with entity @s
