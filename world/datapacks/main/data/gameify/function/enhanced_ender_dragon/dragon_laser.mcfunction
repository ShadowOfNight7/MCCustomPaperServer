execute as @s at @s run summon interaction ~ ~ ~ {Tags:["DragonLaser","EyeTracker"]}
execute as @e[tag=EyeTracker] at @s run rotate @s facing entity @a[sort=random,limit=1] eyes
tag @e[tag=EyeTracker] remove EyeTracker