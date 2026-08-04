execute as @s at @s run particle totem_of_undying ~ ~1 ~ 0.5 1 0.5 5 5000 force
execute as @s at @s run tellraw @s ["You have obtained another life! Now you must face your punishment."]
execute as @s at @s run scoreboard players add @s lives 1

execute as @s at @s store result score @s random run random value 1..10

execute as @s at @s if entity @s[tag=LivesEye,tag=LivesArm,tag=LivesLeg,tag=LivesHeart,tag=LivesStomach,tag=LivesBrain,tag=LivesLiver,tag=LivesTongue,tag=LivesSkull,tag=LivesLung] unless entity @e[tag=LivesExplode] run tag @s add LivesExplode

execute as @s[tag=LivesEye] at @s unless entity @s[tag=LivesExplode] if score @s random matches 1 run function gameify:lives/lives with entity @s
execute as @s at @s if score @s random matches 1 run tag @s add LivesEye

execute as @s[tag=LivesArm] at @s unless entity @s[tag=LivesExplode] if score @s random matches 2 run function gameify:lives/lives with entity @s
execute as @s at @s if score @s random matches 2 run tag @s add LivesArm

execute as @s[tag=LivesLeg] at @s unless entity @s[tag=LivesExplode] if score @s random matches 3 run function gameify:lives/lives with entity @s
execute as @s at @s if score @s random matches 3 run tag @s add LivesLeg

execute as @s[tag=LivesHeart] at @s unless entity @s[tag=LivesExplode] if score @s random matches 4 run function gameify:lives/lives with entity @s
execute as @s at @s if score @s random matches 4 run tag @s add LivesHeart

execute as @s[tag=LivesStomach] at @s unless entity @s[tag=LivesExplode] if score @s random matches 5 run function gameify:lives/lives with entity @s
execute as @s at @s if score @s random matches 5 run tag @s add LivesStomach

execute as @s[tag=LivesBrain] at @s unless entity @s[tag=LivesExplode] if score @s random matches 6 run function gameify:lives/lives with entity @s
execute as @s at @s if score @s random matches 6 run tag @s add LivesBrain

execute as @s[tag=LivesLiver] at @s unless entity @s[tag=LivesExplode] if score @s random matches 7 run function gameify:lives/lives with entity @s
execute as @s at @s if score @s random matches 7 run tag @s add LivesLiver

execute as @s[tag=LivesTongue] at @s unless entity @s[tag=LivesExplode] if score @s random matches 8 run function gameify:lives/lives with entity @s
execute as @s at @s if score @s random matches 8 run tag @s add LivesTongue

execute as @s[tag=LivesSkull] at @s unless entity @s[tag=LivesExplode] if score @s random matches 9 run function gameify:lives/lives with entity @s
execute as @s at @s if score @s random matches 9 run tag @s add LivesSkull

execute as @s[tag=LivesLung] at @s unless entity @s[tag=LivesExplode] if score @s random matches 10 run function gameify:lives/lives with entity @s
execute as @s at @s if score @s random matches 10 run tag @s add LivesLung

execute as @s[tag=LivesEye] at @s run tellraw @s ["Curse of the Eye: Gain permanent darkness."]
execute as @s[tag=LivesArm] at @s run tellraw @s ["Curse of the Arm: Be unable to use your offhand."]
execute as @s[tag=LivesLeg] at @s run tellraw @s ["Curse of the Leg: Gain permanent slowness."]
execute as @s[tag=LivesHeart] at @s run tellraw @s ["Curse of the Heart: Lose 3 hearts."]
execute as @s[tag=LivesStomach] at @s run tellraw @s ["Curse of the Stomach: Gain permanent extreme hunger."]
execute as @s[tag=LivesBrain] at @s run tellraw @s ["Curse of the Brain: Lose your abilities."]
execute as @s[tag=LivesLiver] at @s run tellraw @s ["Curse of the Liver: Be unable to have experience."]
execute as @s[tag=LivesTongue] at @s run tellraw @s ["Curse of the Tongue: Be unable to have (most) positive potion effects."]
execute as @s[tag=LivesSkull] at @s run tellraw @s ["Curse of the Skull: Burn in sunlight."]
execute as @s[tag=LivesLung] at @s run tellraw @s ["Curse of the Lung: Die in water or lava (Even with effects)."]
execute as @s[tag=LivesExplode] at @s run tellraw @s ["Curse of the Explosion: Infinitely explode with high resistance."]

# execute as @s at @s if score @s random matches 6 run scoreboard players set @s brainLives 0

tag @s add LivesDebuff

effect clear @s luck