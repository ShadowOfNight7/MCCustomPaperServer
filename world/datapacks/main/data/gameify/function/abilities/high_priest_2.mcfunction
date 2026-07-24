execute as @s at @s if block ~ ~-1 ~ air align y run summon area_effect_cloud ~ ~-1 ~ {custom_particle:{type:happy_villager},Radius:15,Duration:0}
execute as @s at @s unless block ~ ~-1 ~ air align y run summon area_effect_cloud ~ ~ ~ {custom_particle:{type:happy_villager},Radius:15,Duration:0}

tag @s add HighPriestNoBuffs

execute if entity @s[team=Golden] as @a[distance=..15,tag=!HighPriestNoBuffs,team=Golden] at @s run effect give @s speed 15 0 false
execute if entity @s[team=Golden] as @a[distance=..15,tag=!HighPriestNoBuffs,team=Golden] at @s run effect give @s night_vision 15 0 false
execute if entity @s[team=Golden] as @a[distance=..15,tag=!HighPriestNoBuffs,team=Golden] at @s run effect give @s strength 15 0 false
execute if entity @s[team=Golden] as @a[distance=..15,tag=!HighPriestNoBuffs,team=Golden] at @s run effect give @s regeneration 15 0 false
execute if entity @s[team=Golden] as @a[distance=..15,tag=!HighPriestNoBuffs,team=Golden] at @s run effect give @s resistance 15 0 false

execute if entity @s[team=Golden] as @a[distance=..15,tag=!HighPriestNoBuffs,team=Golden] at @s run effect clear @s weakness
execute if entity @s[team=Golden] as @a[distance=..15,tag=!HighPriestNoBuffs,team=Golden] at @s run effect clear @s slowness
execute if entity @s[team=Golden] as @a[distance=..15,tag=!HighPriestNoBuffs,team=Golden] at @s run effect clear @s blindness
execute if entity @s[team=Golden] as @a[distance=..15,tag=!HighPriestNoBuffs,team=Golden] at @s run effect clear @s wither

execute if entity @s[team=Golden] as @a[distance=..15,tag=!HighPriestNoBuffs,team=Royal] at @s run effect give @s weakness 5 0 false
execute if entity @s[team=Golden] as @a[distance=..15,tag=!HighPriestNoBuffs,team=Royal] at @s run effect give @s slowness 5 0 false
execute if entity @s[team=Golden] as @a[distance=..15,tag=!HighPriestNoBuffs,team=Royal] at @s run effect give @s blindness 5 0 false
execute if entity @s[team=Golden] as @a[distance=..15,tag=!HighPriestNoBuffs,team=Royal] at @s run effect give @s wither 5 0 false

execute if entity @s[team=Golden] as @a[distance=..15,tag=!HighPriestNoBuffs,team=Royal] at @s run effect clear @s speed
execute if entity @s[team=Golden] as @a[distance=..15,tag=!HighPriestNoBuffs,team=Royal] at @s run effect clear @s night_vision
execute if entity @s[team=Golden] as @a[distance=..15,tag=!HighPriestNoBuffs,team=Royal] at @s run effect clear @s strength
execute if entity @s[team=Golden] as @a[distance=..15,tag=!HighPriestNoBuffs,team=Royal] at @s run effect clear @s regeneration
execute if entity @s[team=Golden] as @a[distance=..15,tag=!HighPriestNoBuffs,team=Royal] at @s run effect clear @s resistance


execute if entity @s[team=Royal] as @a[distance=..15,tag=!HighPriestNoBuffs,team=Royal] at @s run effect give @s speed 15 0 false
execute if entity @s[team=Royal] as @a[distance=..15,tag=!HighPriestNoBuffs,team=Royal] at @s run effect give @s night_vision 15 0 false
execute if entity @s[team=Royal] as @a[distance=..15,tag=!HighPriestNoBuffs,team=Royal] at @s run effect give @s strength 15 0 false
execute if entity @s[team=Royal] as @a[distance=..15,tag=!HighPriestNoBuffs,team=Royal] at @s run effect give @s regeneration 15 0 false
execute if entity @s[team=Royal] as @a[distance=..15,tag=!HighPriestNoBuffs,team=Royal] at @s run effect give @s resistance 15 0 false

execute if entity @s[team=Royal] as @a[distance=..15,tag=!HighPriestNoBuffs,team=Royal] at @s run effect clear @s weakness
execute if entity @s[team=Royal] as @a[distance=..15,tag=!HighPriestNoBuffs,team=Royal] at @s run effect clear @s slowness
execute if entity @s[team=Royal] as @a[distance=..15,tag=!HighPriestNoBuffs,team=Royal] at @s run effect clear @s blindness
execute if entity @s[team=Royal] as @a[distance=..15,tag=!HighPriestNoBuffs,team=Royal] at @s run effect clear @s wither

execute if entity @s[team=Royal] as @a[distance=..15,tag=!HighPriestNoBuffs,team=Golden] at @s run effect give @s weakness 5 0 false
execute if entity @s[team=Royal] as @a[distance=..15,tag=!HighPriestNoBuffs,team=Golden] at @s run effect give @s slowness 5 0 false
execute if entity @s[team=Royal] as @a[distance=..15,tag=!HighPriestNoBuffs,team=Golden] at @s run effect give @s blindness 5 0 false
execute if entity @s[team=Royal] as @a[distance=..15,tag=!HighPriestNoBuffs,team=Golden] at @s run effect give @s wither 5 0 false

execute if entity @s[team=Royal] as @a[distance=..15,tag=!HighPriestNoBuffs,team=Golden] at @s run effect clear @s speed
execute if entity @s[team=Royal] as @a[distance=..15,tag=!HighPriestNoBuffs,team=Golden] at @s run effect clear @s night_vision
execute if entity @s[team=Royal] as @a[distance=..15,tag=!HighPriestNoBuffs,team=Golden] at @s run effect clear @s strength
execute if entity @s[team=Royal] as @a[distance=..15,tag=!HighPriestNoBuffs,team=Golden] at @s run effect clear @s regeneration
execute if entity @s[team=Royal] as @a[distance=..15,tag=!HighPriestNoBuffs,team=Golden] at @s run effect clear @s resistance


# execute if entity @s[team=Golden] as @a[distance=..15,tag=!HighPriestNoBuffs,team=Golden] at @s run effect give @s speed 15 0 false
# execute if entity @s[team=Golden] as @a[distance=..15,tag=!HighPriestNoBuffs,team=Golden] at @s run effect give @s night_vision 15 0 false
# execute if entity @s[team=Golden] as @a[distance=..15,tag=!HighPriestNoBuffs,team=Golden] at @s run effect give @s strength 15 0 false
# execute if entity @s[team=Golden] as @a[distance=..15,tag=!HighPriestNoBuffs,team=Golden] at @s run effect give @s regeneration 15 0 false
# execute if entity @s[team=Golden] as @a[distance=..15,tag=!HighPriestNoBuffs,team=Golden] at @s run effect give @s resistance 15 0 false

tag @s remove HighPriestNoBuffs
#speed, night vision, strength, regen, resistance
