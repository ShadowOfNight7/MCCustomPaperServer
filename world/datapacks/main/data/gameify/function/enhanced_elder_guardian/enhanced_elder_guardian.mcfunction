tag @s add ElderMarker

execute as @s[scores={time=1}] as @a[distance=..35] at @s store result score @s elderCurse run data get entity @s Health 10000
execute as @s[scores={time=1}] at @s run attribute @s follow_range base get 64
execute as @s[scores={time=1}] at @s run attribute @s attack_damage base get 14
execute as @s[scores={time=1}] at @s run attribute @s attack_knockback base get 0.5
execute as @s[scores={time=1}] at @s run attribute @s water_movement_efficiency base get 1

execute as @a[distance=..20] at @s facing entity @e[tag=ElderMarker,limit=1] eyes positioned ^ ^ ^-0.015 if block ~ ~ ~ water if block ~ ~1 ~ water run tp @s ~ ~ ~
execute as @a[distance=..18] at @s facing entity @e[tag=ElderMarker,limit=1] eyes positioned ^ ^ ^-0.015 if block ~ ~ ~ water if block ~ ~1 ~ water run tp @s ~ ~ ~
execute as @a[distance=..16] at @s facing entity @e[tag=ElderMarker,limit=1] eyes positioned ^ ^ ^-0.015 if block ~ ~ ~ water if block ~ ~1 ~ water run tp @s ~ ~ ~
execute as @a[distance=..14] at @s facing entity @e[tag=ElderMarker,limit=1] eyes positioned ^ ^ ^-0.015 if block ~ ~ ~ water if block ~ ~1 ~ water run tp @s ~ ~ ~
execute as @a[distance=..12] at @s facing entity @e[tag=ElderMarker,limit=1] eyes positioned ^ ^ ^-0.015 if block ~ ~ ~ water if block ~ ~1 ~ water run tp @s ~ ~ ~
execute as @a[distance=..10] at @s facing entity @e[tag=ElderMarker,limit=1] eyes positioned ^ ^ ^-0.015 if block ~ ~ ~ water if block ~ ~1 ~ water run tp @s ~ ~ ~
execute as @a[distance=..8] at @s facing entity @e[tag=ElderMarker,limit=1] eyes positioned ^ ^ ^-0.015 if block ~ ~ ~ water if block ~ ~1 ~ water run tp @s ~ ~ ~
execute as @a[distance=..6] at @s facing entity @e[tag=ElderMarker,limit=1] eyes positioned ^ ^ ^-0.015 if block ~ ~ ~ water if block ~ ~1 ~ water run tp @s ~ ~ ~
execute as @a[distance=..5] at @s facing entity @e[tag=ElderMarker,limit=1] eyes positioned ^ ^ ^-0.015 if block ~ ~ ~ water if block ~ ~1 ~ water run tp @s ~ ~ ~
execute as @a[distance=..4] at @s facing entity @e[tag=ElderMarker,limit=1] eyes positioned ^ ^ ^-0.015 if block ~ ~ ~ water if block ~ ~1 ~ water run tp @s ~ ~ ~
execute as @a[distance=..3.5] at @s facing entity @e[tag=ElderMarker,limit=1] eyes positioned ^ ^ ^-0.015 if block ~ ~ ~ water if block ~ ~1 ~ water run tp @s ~ ~ ~
execute as @a[distance=..3] at @s facing entity @e[tag=ElderMarker,limit=1] eyes positioned ^ ^ ^-0.015 if block ~ ~ ~ water if block ~ ~1 ~ water run tp @s ~ ~ ~
execute as @a[distance=..2.5] at @s facing entity @e[tag=ElderMarker,limit=1] eyes positioned ^ ^ ^-0.015 if block ~ ~ ~ water if block ~ ~1 ~ water run tp @s ~ ~ ~
execute as @a[distance=..2] at @s facing entity @e[tag=ElderMarker,limit=1] eyes positioned ^ ^ ^-0.015 if block ~ ~ ~ water if block ~ ~1 ~ water run tp @s ~ ~ ~
execute as @a[distance=..1.5] at @s facing entity @e[tag=ElderMarker,limit=1] eyes positioned ^ ^ ^-0.015 if block ~ ~ ~ water if block ~ ~1 ~ water run tp @s ~ ~ ~
execute as @a[distance=..1] at @s facing entity @e[tag=ElderMarker,limit=1] eyes positioned ^ ^ ^-0.015 if block ~ ~ ~ water if block ~ ~1 ~ water run tp @s ~ ~ ~
execute as @a[distance=..0.5] at @s facing entity @e[tag=ElderMarker,limit=1] eyes positioned ^ ^ ^-0.015 if block ~ ~ ~ water if block ~ ~1 ~ water run tp @s ~ ~ ~
execute as @a[distance=..0.25] at @s facing entity @e[tag=ElderMarker,limit=1] eyes positioned ^ ^ ^-0.015 if block ~ ~ ~ water if block ~ ~1 ~ water run tp @s ~ ~ ~

execute as @a[distance=..35] at @s if block ~ ~-0.1 ~ water run tp @s ~ ~-0.1 ~

execute as @e[type=falling_block,distance=..35] at @s run kill @s

execute as @a[distance=..35] at @s if score @s elderCurse < @s health run damage @s 1.2 drown by @e[tag=ElderMarker,limit=1]

execute as @a[distance=..35] at @s store result score @s elderCurse run data get entity @s Health 10000

tag @s remove ElderMarker