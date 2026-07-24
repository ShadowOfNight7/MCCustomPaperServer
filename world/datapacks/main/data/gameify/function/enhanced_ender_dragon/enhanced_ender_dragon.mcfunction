execute as @s at @s as @a[distance=..500] at @s run clear @s #beds
execute as @s at @s as @a[distance=..500] at @s run clear @s respawn_anchor


execute as @s[scores={time=350..}] store result score @s random run random value 1..2

execute as @s[scores={time=350..}] at @s if score @s random matches 1..2 run summon dragon_fireball ~ ~5 ~ {Tags:["TrackingDragonFireball"],Motion:[0d,0.5d,0d]}
execute as @s[scores={time=350..}] at @s if score @s random matches 1..2 run summon dragon_fireball ~ ~5 ~ {Tags:["TrackingDragonFireball"],Motion:[0d,0.5d,0d]}
execute as @s[scores={time=350..}] at @s if score @s random matches 1..2 run summon dragon_fireball ~ ~5 ~ {Tags:["TrackingDragonFireball"],Motion:[0d,0.5d,0d]}

execute as @s[scores={time=350..}] run scoreboard players set @s time 100