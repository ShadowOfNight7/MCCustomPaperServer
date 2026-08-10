tellraw @s[nbt={active_effects:[{id:"minecraft:luck",amplifier:76b}]}] ["A piece of essence has been carved from your being. Face your punishment."]

execute as @s[nbt={active_effects:[{id:"minecraft:luck",amplifier:76b}]}] at @s positioned ~ ~1 ~ run particle block{block_state:"minecraft:crimson_roots"} ~ ~ ~ 0 0.1 0 0.5 500 normal

execute as @s at @s if entity @s[tag=LivesEye,tag=LivesArm,tag=LivesLeg,tag=LivesHeart,tag=LivesStomach,tag=LivesBrain,tag=LivesLiver,tag=LivesTongue,tag=LivesSkull,tag=LivesLung] unless entity @e[tag=LivesExplode] run tag @s add LivesExplode

execute as @s at @s store result score @s random run random value 1..10

execute as @s[tag=LivesEye] at @s unless entity @s[tag=LivesExplode] if score @s random matches 1 run function gameify:lives/ritual with entity @s
execute as @s at @s if score @s random matches 1 run tag @s add LivesEye

execute as @s[tag=LivesArm] at @s unless entity @s[tag=LivesExplode] if score @s random matches 2 run function gameify:lives/ritual with entity @s
execute as @s at @s if score @s random matches 2 run tag @s add LivesArm

execute as @s[tag=LivesLeg] at @s unless entity @s[tag=LivesExplode] if score @s random matches 3 run function gameify:lives/ritual with entity @s
execute as @s at @s if score @s random matches 3 run tag @s add LivesLeg

execute as @s[tag=LivesHeart] at @s unless entity @s[tag=LivesExplode] if score @s random matches 4 run function gameify:lives/ritual with entity @s
execute as @s at @s if score @s random matches 4 run tag @s add LivesHeart

execute as @s[tag=LivesStomach] at @s unless entity @s[tag=LivesExplode] if score @s random matches 5 run function gameify:lives/ritual with entity @s
execute as @s at @s if score @s random matches 5 run tag @s add LivesStomach

execute as @s[tag=LivesBrain] at @s unless entity @s[tag=LivesExplode] if score @s random matches 6 run function gameify:lives/ritual with entity @s
execute as @s at @s if score @s random matches 6 run tag @s add LivesBrain

execute as @s[tag=LivesLiver] at @s unless entity @s[tag=LivesExplode] if score @s random matches 7 run function gameify:lives/ritual with entity @s
execute as @s at @s if score @s random matches 7 run tag @s add LivesLiver

execute as @s[tag=LivesTongue] at @s unless entity @s[tag=LivesExplode] if score @s random matches 8 run function gameify:lives/ritual with entity @s
execute as @s at @s if score @s random matches 8 run tag @s add LivesTongue

execute as @s[tag=LivesSkull] at @s unless entity @s[tag=LivesExplode] if score @s random matches 9 run function gameify:lives/ritual with entity @s
execute as @s at @s if score @s random matches 9 run tag @s add LivesSkull

execute as @s[tag=LivesLung] at @s unless entity @s[tag=LivesExplode] if score @s random matches 10 run function gameify:lives/ritual with entity @s
execute as @s at @s if score @s random matches 10 run tag @s add LivesLung

execute as @s[tag=LivesEye,nbt={active_effects:[{id:"minecraft:luck",amplifier:76b}]}] at @s run tellraw @s ["Curse of the Eye: Gain permanent darkness."]
execute as @s[tag=LivesArm,nbt={active_effects:[{id:"minecraft:luck",amplifier:76b}]}] at @s run tellraw @s ["Curse of the Arm: Be unable to use your offhand."]
execute as @s[tag=LivesLeg,nbt={active_effects:[{id:"minecraft:luck",amplifier:76b}]}] at @s run tellraw @s ["Curse of the Leg: Gain permanent slowness."]
execute as @s[tag=LivesHeart,nbt={active_effects:[{id:"minecraft:luck",amplifier:76b}]}] at @s run tellraw @s ["Curse of the Heart: Lose 3 hearts."]
execute as @s[tag=LivesStomach,nbt={active_effects:[{id:"minecraft:luck",amplifier:76b}]}] at @s run tellraw @s ["Curse of the Stomach: Gain permanent extreme hunger."]
execute as @s[tag=LivesBrain,nbt={active_effects:[{id:"minecraft:luck",amplifier:76b}]}] at @s run tellraw @s ["Curse of the Brain: Lose your abilities."]
execute as @s[tag=LivesLiver,nbt={active_effects:[{id:"minecraft:luck",amplifier:76b}]}] at @s run tellraw @s ["Curse of the Liver: Be unable to have experience."]
execute as @s[tag=LivesTongue,nbt={active_effects:[{id:"minecraft:luck",amplifier:76b}]}] at @s run tellraw @s ["Curse of the Tongue: Be unable to have (most) positive potion effects."]
execute as @s[tag=LivesSkull,nbt={active_effects:[{id:"minecraft:luck",amplifier:76b}]}] at @s run tellraw @s ["Curse of the Skull: Burn in sunlight."]
execute as @s[tag=LivesLung,nbt={active_effects:[{id:"minecraft:luck",amplifier:76b}]}] at @s run tellraw @s ["Curse of the Lung: Die in water or lava (Even with effects)."]
execute as @s[tag=LivesExplode,nbt={active_effects:[{id:"minecraft:luck",amplifier:76b}]}] at @s run tellraw @s ["Curse of the Explosion: Infinitely explode with high resistance."]

# execute as @s at @s if score @s random matches 6 run scoreboard players set @s brainLives 0

tag @s add LivesDebuff

give @s[nbt={active_effects:[{id:"minecraft:luck",amplifier:76b}]}] debug_stick[custom_name=[{"text":"Life Essence","italic":false,"color":"blue"}],lore=[[{"text":"It feels as fragile as glass yet unable to be broken.","italic":false,"color":"gray"}]],rarity=rare,enchantment_glint_override=true,item_model="minecraft:dragon_breath",tooltip_display={hidden_components:[enchantments]}]

effect clear @s luck