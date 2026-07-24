# execute if score @s cooldown matches 1.. run tellraw @s ["You are on cooldown. Please wait ",{"score":{"name":"@s","objective":"cooldown"}}, " ticks."]

execute as @s[tag=HighPriest] at @s if score @s cooldown matches 1.. run tellraw @s ["You are on cooldown. Please wait ",{"score":{"name":"@s","objective":"cooldown"}}, " ticks."]
execute as @s[tag=HighPriest] at @s if score @s cooldown matches ..0 run function gameify:abilities/high_priest with entity @s

execute as @s[tag=Occultist] at @s if score @s cooldown matches 1.. if score @s shiftingCheck matches 0 run tellraw @s ["You are on cooldown. Please wait ",{"score":{"name":"@s","objective":"cooldown"}}, " ticks."]
execute as @s[tag=Occultist] at @s if score @s cooldown2 matches 1.. if score @s shiftingCheck matches 1.. run tellraw @s ["You are on cooldown. Please wait ",{"score":{"name":"@s","objective":"cooldown2"}}, " ticks."]
execute as @s[tag=Occultist] at @s if score @s cooldown matches ..0 if score @s shiftingCheck matches 0 run function gameify:abilities/occultist with entity @s
execute as @s[tag=Occultist] at @s if score @s cooldown2 matches ..0 if score @s shiftingCheck matches 1.. run function gameify:abilities/occultist_2 with entity @s

execute as @s[tag=Crusader] at @s if score @s cooldown matches 1.. if score @s shiftingCheck matches 0 run tellraw @s ["You are on cooldown. Please wait ",{"score":{"name":"@s","objective":"cooldown"}}, " ticks."]
execute as @s[tag=Crusader] at @s if score @s cooldown2 matches 1.. if score @s shiftingCheck matches 1.. run tellraw @s ["You are on cooldown. Please wait ",{"score":{"name":"@s","objective":"cooldown2"}}, " ticks."]
execute as @s[tag=Crusader] at @s if score @s cooldown matches ..0 if score @s shiftingCheck matches 0 run function gameify:abilities/crusader with entity @s
execute as @s[tag=Crusader] at @s if score @s cooldown2 matches ..0 if score @s shiftingCheck matches 1.. run function gameify:abilities/crusader_2 with entity @s

execute as @s[tag=Chaplain] at @s if score @s cooldown matches 1.. if score @s shiftingCheck matches 0 run tellraw @s ["You are on cooldown. Please wait ",{"score":{"name":"@s","objective":"cooldown"}}, " ticks."]
execute as @s[tag=Chaplain] at @s if score @s cooldown matches 1.. if score @s shiftingCheck matches 1.. run tellraw @s ["You are on cooldown. Please wait ",{"score":{"name":"@s","objective":"cooldown"}}, " ticks."]
execute as @s[tag=Chaplain] at @s if score @s cooldown matches ..0 if score @s shiftingCheck matches 0 run function gameify:abilities/chaplain with entity @s
execute as @s[tag=Chaplain] at @s if score @s cooldown matches ..0 if score @s shiftingCheck matches 1.. run function gameify:abilities/chaplain_2 with entity @s

execute as @s[tag=Knight] at @s if score @s cooldown matches 1.. if score @s shiftingCheck matches 0 run tellraw @s ["You are on cooldown. Please wait ",{"score":{"name":"@s","objective":"cooldown"}}, " ticks."]
execute as @s[tag=Knight] at @s if score @s cooldown matches 1.. if score @s shiftingCheck matches 1.. run tellraw @s ["You are on cooldown. Please wait ",{"score":{"name":"@s","objective":"cooldown"}}, " ticks."]
execute as @s[tag=Knight] at @s if score @s cooldown matches ..0 if score @s shiftingCheck matches 0 run function gameify:abilities/knight with entity @s
execute as @s[tag=Knight] at @s if score @s cooldown matches ..0 if score @s shiftingCheck matches 1.. run function gameify:abilities/knight_2 with entity @s

execute as @s[tag=Worker] at @s if score @s cooldown matches 1.. run tellraw @s ["You are on cooldown. Please wait ",{"score":{"name":"@s","objective":"cooldown"}}, " ticks."]
execute as @s[tag=Worker] at @s if score @s cooldown matches ..0 run function gameify:abilities/worker with entity @s
