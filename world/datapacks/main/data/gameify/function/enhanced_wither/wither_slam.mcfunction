execute as @s at @s positioned ~ ~ ~ rotated ~ 0 positioned ^ ^ ^0.8 run summon wither_skull ~ ~ ~ {Tags:["WitherSlammed"]}
execute as @s at @s positioned ~ ~ ~ rotated ~20 0 positioned ^ ^ ^0.8 run summon wither_skull ~ ~ ~ {Tags:["WitherSlammed"]}
execute as @s at @s positioned ~ ~ ~ rotated ~40 0 positioned ^ ^ ^0.8 run summon wither_skull ~ ~ ~ {Tags:["WitherSlammed"]}
execute as @s at @s positioned ~ ~ ~ rotated ~60 0 positioned ^ ^ ^0.8 run summon wither_skull ~ ~ ~ {Tags:["WitherSlammed"]}
execute as @s at @s positioned ~ ~ ~ rotated ~80 0 positioned ^ ^ ^0.8 run summon wither_skull ~ ~ ~ {Tags:["WitherSlammed"]}
execute as @s at @s positioned ~ ~ ~ rotated ~100 0 positioned ^ ^ ^0.8 run summon wither_skull ~ ~ ~ {Tags:["WitherSlammed"]}
execute as @s at @s positioned ~ ~ ~ rotated ~120 0 positioned ^ ^ ^0.8 run summon wither_skull ~ ~ ~ {Tags:["WitherSlammed"]}
execute as @s at @s positioned ~ ~ ~ rotated ~140 0 positioned ^ ^ ^0.8 run summon wither_skull ~ ~ ~ {Tags:["WitherSlammed"]}
execute as @s at @s positioned ~ ~ ~ rotated ~160 0 positioned ^ ^ ^0.8 run summon wither_skull ~ ~ ~ {Tags:["WitherSlammed"]}
execute as @s at @s positioned ~ ~ ~ rotated ~180 0 positioned ^ ^ ^0.8 run summon wither_skull ~ ~ ~ {Tags:["WitherSlammed"]}
execute as @s at @s positioned ~ ~ ~ rotated ~200 0 positioned ^ ^ ^0.8 run summon wither_skull ~ ~ ~ {Tags:["WitherSlammed"]}
execute as @s at @s positioned ~ ~ ~ rotated ~220 0 positioned ^ ^ ^0.8 run summon wither_skull ~ ~ ~ {Tags:["WitherSlammed"]}
execute as @s at @s positioned ~ ~ ~ rotated ~240 0 positioned ^ ^ ^0.8 run summon wither_skull ~ ~ ~ {Tags:["WitherSlammed"]}
execute as @s at @s positioned ~ ~ ~ rotated ~260 0 positioned ^ ^ ^0.8 run summon wither_skull ~ ~ ~ {Tags:["WitherSlammed"]}
execute as @s at @s positioned ~ ~ ~ rotated ~280 0 positioned ^ ^ ^0.8 run summon wither_skull ~ ~ ~ {Tags:["WitherSlammed"]}
execute as @s at @s positioned ~ ~ ~ rotated ~300 0 positioned ^ ^ ^0.8 run summon wither_skull ~ ~ ~ {Tags:["WitherSlammed"]}
execute as @s at @s positioned ~ ~ ~ rotated ~320 0 positioned ^ ^ ^0.8 run summon wither_skull ~ ~ ~ {Tags:["WitherSlammed"]}
execute as @s at @s positioned ~ ~ ~ rotated ~340 0 positioned ^ ^ ^0.8 run summon wither_skull ~ ~ ~ {Tags:["WitherSlammed"]}

execute as @e[tag=WitherSlammed] at @s positioned ~ ~ ~ run rotate @s facing entity @e[type=wither,limit=1,sort=nearest] feet
execute as @e[tag=WitherSlammed] at @s run function gameify:enhanced_wither/wither_slam2 with entity @s