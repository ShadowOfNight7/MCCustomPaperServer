say Loading...

scoreboard objectives add time dummy
scoreboard objectives add right_click dummy
scoreboard objectives add shifting custom:sneak_time
scoreboard objectives add shiftingCheck dummy
scoreboard objectives add jumping custom:jump
scoreboard objectives add jumpingCheck dummy

scoreboard objectives add posX dummy
scoreboard objectives add posY dummy
scoreboard objectives add posZ dummy
scoreboard objectives add random dummy
scoreboard objectives add blank dummy

scoreboard objectives add playerhit dummy
scoreboard objectives add playerhitplayer dummy
scoreboard objectives add crit dummy


scoreboard objectives add globalScore dummy
scoreboard players set @a globalScore -2147483648

scoreboard objectives add id dummy

scoreboard objectives add deaths deathCount

scoreboard objectives add lives dummy

scoreboard objectives add healthBefore dummy
scoreboard objectives add health dummy
scoreboard objectives add healthAfter dummy

scoreboard objectives add clock dummy




team add skeletons
team modify skeletons friendlyFire false
team add creepers
team modify creepers friendlyFire false



team add Golden 'Golden Empire'
team modify Golden color yellow
team modify Golden friendlyFire false
team modify Golden seeFriendlyInvisibles true
team modify Golden deathMessageVisibility hideForOtherTeams

team add Royal "Royal Nation"
team modify Royal color dark_purple
team modify Royal friendlyFire false
team modify Royal seeFriendlyInvisibles true
team modify Golden deathMessageVisibility hideForOtherTeams

# team add Solace "Solace Coalition"
# team modify Solace color dark_green
# team modify Solace friendlyFire false
# team modify Solace seeFriendlyInvisibles true
# team modify Solace deathMessageVisibility hideForOtherTeams


scoreboard objectives add cooldown dummy
scoreboard players set @e cooldown 0

scoreboard objectives add seconds dummy
scoreboard players set @e seconds 0
scoreboard objectives add seconds2 dummy
scoreboard players set @e seconds2 0

#Numberslol
scoreboard objectives add twenty dummy
scoreboard players set @e twenty 20

scoreboard objectives add basenumber dummy
scoreboard players set @e basenumber 0


scoreboard objectives add cooldown2 dummy
scoreboard players set @e cooldown2 0


#High Priest
scoreboard objectives add highPriestAbility1 dummy
scoreboard players set @e highPriestAbility1 0

scoreboard objectives add highPriestTraitor dummy
scoreboard players set @e highPriestTraitor 0

scoreboard objectives add highPriestTraitorNum dummy
scoreboard players set @e highPriestTraitorNum 0

#Emperor
scoreboard objectives add exile trigger
scoreboard objectives add placeFlag trigger

scoreboard objectives add flagHealth dummy

scoreboard objectives add flagNumber dummy


scoreboard objectives add flagRandom1 dummy
scoreboard objectives add flagRandom2 dummy
scoreboard objectives add flagRandom3 dummy

scoreboard objectives add flagSouled dummy
scoreboard objectives add flagNums dummy



#Occultist
scoreboard objectives add occultistAbility1 dummy
scoreboard players set @e occultistAbility1 0

scoreboard objectives add occultistAbility2 dummy
scoreboard players set @e occultistAbility2 0

#False Prophet
scoreboard objectives add reveal trigger

scoreboard objectives add conceal trigger

#Knight
scoreboard objectives add knightAbility1 dummy
scoreboard players set @e knightAbility1 0





#Wither
scoreboard objectives add witherCorrode dummy
scoreboard players set @e witherCorrode 0

#ElderGuardian
scoreboard objectives add elderCurse dummy
scoreboard players set @e elderCurse 0


# give Pokemon858 command_block[custom_name=[{"text":"Life","italic":false,"color":"gold"}],lore=[[{"text":"Consume it to permanently gain a life.","italic":false,"color":"gray"}],[{"text":"There are consequences of defying your fate, but that is your risk to take.","italic":false,"color":"dark_red"}]],rarity=epic,enchantment_glint_override=true,food={nutrition:999,saturation:999,can_always_eat:1b},consumable={consume_seconds:10,animation:bow,has_consume_particles:0b,on_consume_effects:[{type:apply_effects,effects:[{id:luck,duration:10,amplifier:77,show_particles:0b,show_icon:0b},{id:resistance,duration:100,amplifier:10},{id:instant_health,duration:100,amplifier:10}]}]},damage_resistant={types:"#damages_helmet"},item_model="minecraft:amethyst_shard",tooltip_display={hidden_components:[enchantments]}]
# give Pokemon858 command_block[custom_name=[{"text":"Ritual Sword","italic":false,"color":"dark_red"}],lore=[[{"text":"Only those who are pure can use it.","italic":false,"color":"gray"}],[{"text":"Take out a piece of your essence. Only applies significant damage to self.","italic":false,"color":"dark_red"}]],rarity=uncommon,enchantment_glint_override=true,food={nutrition:0,saturation:0,can_always_eat:1b},consumable={consume_seconds:3,animation:block,has_consume_particles:0b,on_consume_effects:[{type:apply_effects,effects:[{id:luck,duration:10,amplifier:76,show_particles:0b,show_icon:0b},{id:instant_damage,duration:1,amplifier:2}]}]},item_model="minecraft:iron_sword",tooltip_display={hidden_components:[enchantments]},max_stack_size=1]
# give Pokemon858 command_block[custom_name=[{"text":"Soul","bold":true,"italic":false,"color":"blue"}],lore=[[{"text":"Used to weaken flags!","italic":false,"color":"gray"}]],damage_resistant={types:"minecraft:on_fire"},item_model="minecraft:ender_pearl",custom_data={soul:true}]

#Lives
scoreboard objectives add brainLives dummy
scoreboard players set @e brainLives 0

scoreboard objectives add eyeLives dummy
scoreboard players set @e eyeLives 0

#items
scoreboard objectives add itemStats dummy
scoreboard players set @e itemStats 0

scoreboard objectives add newItemStats dummy
scoreboard players set @e newItemStats 0

scoreboard objectives add armorPassive.absorption dummy
scoreboard players set @e armorPassive.absorption 0
scoreboard objectives add armorPassive.absorption.cooldown dummy
scoreboard players set @e armorPassive.absorption.cooldown 0

scoreboard objectives add armorPassive.barrier dummy
scoreboard players set @e armorPassive.barrier 0
scoreboard objectives add armorPassive.barrier.cooldown.head dummy
scoreboard players set @e armorPassive.barrier.cooldown.head 0
scoreboard objectives add armorPassive.barrier.cooldown.chest dummy
scoreboard players set @e armorPassive.barrier.cooldown.chest 0
scoreboard objectives add armorPassive.barrier.cooldown.legs dummy
scoreboard players set @e armorPassive.barrier.cooldown.legs 0
scoreboard objectives add armorPassive.barrier.cooldown.feet dummy
scoreboard players set @e armorPassive.barrier.cooldown.feet 0

scoreboard objectives add crossbowCart dummy
scoreboard players set @e crossbowCart 0
scoreboard objectives add crossbowReloads dummy
scoreboard players set @e crossbowReloads 0

scoreboard objectives add resistanceCooldown dummy
scoreboard players set @e resistanceCooldown 0

scoreboard objectives add max_snipe_distance dummy
scoreboard players set @e max_snipe_distance 0


#Turrets Lol
scoreboard objectives add turret.cooldown dummy
scoreboard players set @e turret.cooldown 0

scoreboard objectives add turret_id dummy
# scoreboard players set @e turret_id 0

scoreboard objectives add turret_power dummy

scoreboard objectives add turret_health dummy

scoreboard objectives add turret_attack dummy

scoreboard objectives add turret_utility dummy


#SwordEnchants
scoreboard objectives add enchant.potion dummy
scoreboard players set @e enchant.potion 0

scoreboard objectives add enchant.strengthen dummy
scoreboard players set @e enchant.strengthen 0

scoreboard objectives add enchant.aquatic dummy
scoreboard players set @e enchant.aquatic 0

scoreboard objectives add enchant.target dummy
scoreboard players set @e enchant.target -1
scoreboard objectives add enchant.target2 dummy
scoreboard players set @e enchant.target2 0

scoreboard objectives add enchant.knockout dummy
scoreboard players set @e enchant.knockout 0


scoreboard objectives add itemCount dummy
scoreboard players set @e itemCount 0
