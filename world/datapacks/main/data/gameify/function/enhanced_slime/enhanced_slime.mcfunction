execute as @s at @s store result score @s random run data get entity @s Size

tag @s[tag=!Goodbye] add TargetCube

execute as @e[type=slime,distance=..5,tag=!TargetCube,scores={time=100..}] at @s if score @s random = @e[tag=TargetCube,limit=1,type=slime,scores={time=100..}] random as @e[tag=TargetCube,limit=1,type=slime,scores={time=100..}] at @s run function gameify:enhanced_slime/slimegrow with entity @s
execute as @e[type=slime,distance=..5,tag=!TargetCube,scores={time=100..}] at @s if score @s random = @e[tag=TargetCube,limit=1,type=slime,scores={time=100..}] random run tag @s add Goodbye
execute as @e[type=slime,distance=..5,tag=!TargetCube,scores={time=100..}] at @s if score @s random = @e[tag=TargetCube,limit=1,type=slime,scores={time=100..}] random run tp @s ~ -200 ~

execute as @e[type=magma_cube,distance=..5,tag=!TargetCube,scores={time=200..}] at @s if score @s random = @e[tag=TargetCube,limit=1,type=magma_cube,scores={time=200..}] random as @e[tag=TargetCube,limit=1,type=magma_cube,scores={time=100..}] at @s run function gameify:enhanced_slime/slimegrow with entity @s
execute as @e[type=magma_cube,distance=..5,tag=!TargetCube,scores={time=200..}] at @s if score @s random = @e[tag=TargetCube,limit=1,type=magma_cube,scores={time=200..}] random as @e[tag=TargetCube,limit=1,type=magma_cube,scores={time=100..}] at @s run particle flame ~ ~1 ~ 0.1 0.1 0.1 1 300 normal
execute as @e[type=magma_cube,distance=..5,tag=!TargetCube,scores={time=200..}] at @s if score @s random = @e[tag=TargetCube,limit=1,type=magma_cube,scores={time=200..}] random as @e[tag=TargetCube,limit=1,type=magma_cube,scores={time=100..}] at @s as @e[distance=..10,type=!magma_cube] at @s run damage @s 8 in_fire by @e[tag=TargetCube,limit=1] from @e[tag=TargetCube,limit=1]
execute as @e[type=magma_cube,distance=..5,tag=!TargetCube,scores={time=200..}] at @s if score @s random = @e[tag=TargetCube,limit=1,type=magma_cube,scores={time=200..}] random run tag @s add Goodbye
execute as @e[type=magma_cube,distance=..5,tag=!TargetCube,scores={time=200..}] at @s if score @s random = @e[tag=TargetCube,limit=1,type=magma_cube,scores={time=200..}] random run tp @s ~ -200 ~

tag @s remove TargetCube

execute as @s[type=slime,scores={random=6}] at @s unless entity @s[nbt={equipment:{mainhand:{id:"minecraft:slime_spawn_egg",count:1}},drop_chances:{mainhand:1f}}] run data merge entity @s {equipment:{mainhand:{id:"minecraft:slime_spawn_egg",count:1}},drop_chances:{mainhand:1f}}
execute as @s[type=magma_cube,scores={random=6}] at @s unless entity @s[nbt={equipment:{mainhand:{id:"minecraft:magma_cube_spawn_egg",count:1}},drop_chances:{mainhand:1f}}] run data merge entity @s {equipment:{mainhand:{id:"minecraft:magma_cube_spawn_egg",count:1}},drop_chances:{mainhand:1f}}

execute as @s[scores={time=1}] at @s run effect give @s jump_boost infinite 2 true
execute as @s[scores={time=1}] at @s run attribute @s follow_range base set 64

execute as @s[scores={random=2}] at @s run effect give @s strength 1 0 true
execute as @s[scores={random=3}] at @s run effect give @s strength 1 0 true
execute as @s[scores={random=4}] at @s run effect give @s strength 1 1 true
execute as @s[scores={random=5}] at @s run effect give @s strength 1 2 true
execute as @s[scores={random=6}] at @s run effect give @s strength 1 2 true
execute as @s[scores={random=7}] at @s run effect give @s strength 1 3 true
execute as @s[scores={random=8}] at @s run effect give @s strength 1 4 true
execute as @s[scores={random=9}] at @s run effect give @s strength 1 4 true
execute as @s[scores={random=10..}] at @s run effect give @s strength 1 5 true
