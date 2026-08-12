# execute if score @s cooldown matches 1.. run tellraw @s ["You are on cooldown. Please wait ",{"score":{"name":"@s","objective":"cooldown"}}, " ticks."]

execute as @s at @s store result score @s seconds run scoreboard players get @s cooldown
execute as @s at @s run scoreboard players operation @s seconds /= @s twenty

execute as @s at @s store result score @s seconds2 run scoreboard players get @s cooldown2
execute as @s at @s run scoreboard players operation @s seconds2 /= @s twenty


execute as @s[tag=HighPriest] at @s if items entity @s weapon.mainhand *[custom_data~{ability:1b}] if score @s cooldown matches 1.. run tellraw @s ["You are on cooldown. Please wait ",{"score":{"name":"@s","objective":"seconds"}}, " seconds."]
execute as @s[tag=HighPriest] at @s if items entity @s weapon.mainhand *[custom_data~{ability:1b}] if score @s cooldown matches ..0 run function gameify:abilities/high_priest with entity @s

execute as @s[tag=Occultist] at @s if items entity @s weapon.mainhand *[custom_data~{ability:1b}] if score @s cooldown matches 1.. if score @s shiftingCheck matches 0 run tellraw @s ["You are on cooldown. Please wait ",{"score":{"name":"@s","objective":"seconds"}}, " seconds."]
execute as @s[tag=Occultist] at @s if items entity @s weapon.mainhand *[custom_data~{ability:1b}] if score @s cooldown2 matches 1.. if score @s shiftingCheck matches 1.. run tellraw @s ["You are on cooldown. Please wait ",{"score":{"name":"@s","objective":"seconds2"}}, " seconds."]
execute as @s[tag=Occultist] at @s if items entity @s weapon.mainhand *[custom_data~{ability:1b}] if score @s cooldown matches ..0 if score @s shiftingCheck matches 0 run function gameify:abilities/occultist with entity @s
execute as @s[tag=Occultist] at @s if items entity @s weapon.mainhand *[custom_data~{ability:1b}] if score @s cooldown2 matches ..0 if score @s shiftingCheck matches 1.. run function gameify:abilities/occultist_2 with entity @s

execute as @s[tag=Crusader] at @s if items entity @s weapon.mainhand *[custom_data~{ability:1b}] if score @s cooldown matches 1.. if score @s shiftingCheck matches 0 run tellraw @s ["You are on cooldown. Please wait ",{"score":{"name":"@s","objective":"seconds"}}, " seconds."]
execute as @s[tag=Crusader] at @s if items entity @s weapon.mainhand *[custom_data~{ability:1b}] if score @s cooldown2 matches 1.. if score @s shiftingCheck matches 1.. run tellraw @s ["You are on cooldown. Please wait ",{"score":{"name":"@s","objective":"seconds2"}}, " seconds."]
execute as @s[tag=Crusader] at @s if items entity @s weapon.mainhand *[custom_data~{ability:1b}] if score @s cooldown matches ..0 if score @s shiftingCheck matches 0 run function gameify:abilities/crusader with entity @s
execute as @s[tag=Crusader] at @s if items entity @s weapon.mainhand *[custom_data~{ability:1b}] if score @s cooldown2 matches ..0 if score @s shiftingCheck matches 1.. run function gameify:abilities/crusader_2 with entity @s

execute as @s[tag=Chaplain] at @s if items entity @s weapon.mainhand *[custom_data~{ability:1b}] if score @s cooldown matches 1.. if score @s shiftingCheck matches 0 run tellraw @s ["You are on cooldown. Please wait ",{"score":{"name":"@s","objective":"seconds"}}, " seconds."]
execute as @s[tag=Chaplain] at @s if items entity @s weapon.mainhand *[custom_data~{ability:1b}] if score @s cooldown matches 1.. if score @s shiftingCheck matches 1.. run tellraw @s ["You are on cooldown. Please wait ",{"score":{"name":"@s","objective":"seconds"}}, " seconds."]
execute as @s[tag=Chaplain] at @s if items entity @s weapon.mainhand *[custom_data~{ability:1b}] if score @s cooldown matches ..0 if score @s shiftingCheck matches 0 run function gameify:abilities/chaplain with entity @s
execute as @s[tag=Chaplain] at @s if items entity @s weapon.mainhand *[custom_data~{ability:1b}] if score @s cooldown matches ..0 if score @s shiftingCheck matches 1.. run function gameify:abilities/chaplain_2 with entity @s

execute as @s[tag=Knight] at @s if items entity @s weapon.mainhand *[custom_data~{ability:1b}] if score @s cooldown matches 1.. if score @s shiftingCheck matches 0 run tellraw @s ["You are on cooldown. Please wait ",{"score":{"name":"@s","objective":"seconds"}}, " seconds."]
execute as @s[tag=Knight] at @s if items entity @s weapon.mainhand *[custom_data~{ability:1b}] if score @s cooldown matches 1.. if score @s shiftingCheck matches 1.. run tellraw @s ["You are on cooldown. Please wait ",{"score":{"name":"@s","objective":"seconds"}}, " seconds."]
execute as @s[tag=Knight] at @s if items entity @s weapon.mainhand *[custom_data~{ability:1b}] if score @s cooldown matches ..0 if score @s shiftingCheck matches 0 run function gameify:abilities/knight with entity @s
execute as @s[tag=Knight] at @s if items entity @s weapon.mainhand *[custom_data~{ability:1b}] if score @s cooldown matches ..0 if score @s shiftingCheck matches 1.. run function gameify:abilities/knight_2 with entity @s

execute as @s[tag=Worker] at @s if items entity @s weapon.mainhand *[custom_data~{ability:1b}] if score @s cooldown matches 1.. run tellraw @s ["You are on cooldown. Please wait ",{"score":{"name":"@s","objective":"seconds"}}, " seconds."]
execute as @s[tag=Worker] at @s if items entity @s weapon.mainhand *[custom_data~{ability:1b}] if score @s cooldown matches ..0 run function gameify:abilities/worker with entity @s

#OtherItems

execute as @s at @s store result score @s seconds run scoreboard players get @s turret.cooldown
execute as @s at @s run scoreboard players operation @s seconds /= @s twenty

execute as @s at @s if items entity @s weapon.mainhand *[custom_data~{turret:1b}] if score @s turret.cooldown matches 1.. run tellraw @s ["You are on cooldown. Please wait ",{"score":{"name":"@s","objective":"seconds"}}, " seconds."]
execute as @s at @s if items entity @s weapon.mainhand *[custom_data~{turret:1b}] if score @s turret.cooldown matches ..0 run function gameify:bows/turrets with entity @s