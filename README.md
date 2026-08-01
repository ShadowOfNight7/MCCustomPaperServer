# MCCustomPaperServer
## Overview
TBA
### Lives
TBA
### Banners
The three banners form basis of your base, they provide you with stability and safety. The banners are placed by the emperor and can not be moved afterwards, so select their location wisely. Keep in mind that the banner creates particles in its AoE so it is very hard to hide. Banners have 250 health, each time an enemy hits the flag they will take 1 damage, breaking upon reaching 0 health. After being placed down all allied players will receive the following buffs when within 30 blocks:
- Regeneration III
- Resistance II
- Strength II
- Speed II
- Night Vision I
- Jump Boost II
- Haste I
- Dolphin's Grace​‌ I
- Water Breathing I

In addition to the above effects any dangerous mobs will be teleported randomly 100 blocks away from the perimeter of the banner. The banner will also regenerate health at a rate of 21hp/sec. Each time an enemy attacks the banner they will take a small amount of damage and knockback.

Enemies in the AoE will also be inflected with negative status effects:
- Weakness II
- Slowness I
- Hunger III
- Mining Fatigue II
- Darkness I
- Darkness I (triggers once every 30 seconds)


### Souls
_"You hear the horrific screams of anguish from a comrades soul as it is dissipates into nothingness. It would have floated downwards but we are already stuck in hell..."_

Souls are harvested from player via the Occultist's abilities (see Roles Descriptions for more information). Each player only has one soul per life, and will loose three max hearts if they have lost their soul. Souls can be used when standing in the AoE of an enemy banner to weaken its effects. Each soul lasts for 20 minutes and the duration stacks, however, as each soul expires the effect will also be reduced. 

First soul used: 
- Defenders' buff reduced:
    - Regeneration ~~III~~ -> **II**
    - Resistance ~~II~~ -> **I**
    - Strength ~~II~~ -> **I**
    - Speed ~~II~~ -> **I**
    - Night Vision ~~I~~ -> **Nullified**
    - Jump Boost ~~II~~ -> **Nullified**
    - Haste ~~I~~ -> **Nullified**
    - Dolphin's Grace​‌ ~~I~~ -> **Nullified**
    - Water Breathing ~~I~~ -> **Nullified**
- Attackers' debuff reduced:
    - Weakness ~~II~~ -> **I**
    - Slowness ~~I~~ -> **Nullified**
    - Hunger ~~III~~ -> **II**
    - Mining Fatigue ~~II~~ -> **I**
    - Darkness ~~I~~ -> **Nullified**

Second soul used: 
- Attackers' debuff nullified:
    - Weakness ~~II~~ -> **Nullified**
    - Slowness ~~I~~ -> **Nullified**
    - Hunger ~~III~~ -> **Nullified**
    - Mining Fatigue ~~II~~ -> **Nullified**
    - Darkness ~~I~~ -> **Nullified**
- Flag defense reduced:
    - Flag health regeneration ~~21hp/sec~~ -> **14hp/sec**
    - Flag thorns damage ~~0.5dmg/hit~~ -> **0.35dmg/hit**
- All effects of the first soul

Third soul used:
- Defenders' buff nullified:
    - Regeneration ~~III~~ -> **Nullified**
    - Resistance ~~II~~ -> **Nullified**
    - Strength ~~II~~ -> **Nullified**
    - Speed ~~II~~ -> **Nullified**
    - Night Vision ~~I~~ -> **Nullified**
    - Jump Boost ~~II~~ -> **Nullified**
    - Haste ~~I~~ -> **Nullified**
    - Dolphin's Grace​‌ ~~I~~ -> **Nullified**
    - Water Breathing ~~I~~ -> **Nullified**
- Defenders' gain debuffs:
    - Weakness I
    - Slowness I
    - Hunger I
- Flag defense reduced:
    - Flag health regeneration ~~21hp/sec~~ -> **7hp/sec**
    - Flag thorns damage ~~0.5dmg/hit~~ -> **0.25dmg/hit**
    - Flag knockback reduced by 50%
- Dangerous mob removal paused
- All effects of the second soul

## Role Descriptions
### Golden Empire
_"Long Live The Emperor! Long Live The Great Empire! Long Live The People"_
- **Emperor** - You hold absolute power over the people of the Golden Empire, use your power wisely. The crown you wear is a physical manifestation of both your power and the oath you swore. The oath of your coronation a duty that will only end you are laid to rest. You can place the three banners, which are the basis around which your kingdom is build, using `/trigger placeFlag`. You can exile traitors using `/trigger exile <player id>` (use `/trigger exile` to check a player's id). You have been blessed with 20 hearts and will also take on the responsibilities of the Elder Sage if they fall.
- **High Priest** - Having studied scripture for many years you have gained the passive ability to sense those who have broken their oath to the emperor. Your primary ability, `<ability>` (CD: n seconds), triggers when you are in a crowd of four or more others for an extended amount of time; you will be able to detect those who are disloyal to the great empire with relative confidence. You also have an alternate ability `Cleansing of Sin` (CD: n seconds, duration: n seconds, radius: n blocks) which creates a circle of vitality that cleanses negative effects off teammates and grants them positive ones. In a true act of altruism you have sacrifice the ability's affect on yourself so more people may be cleansed of evil. You will take on the responsibilities of the Occultist if they fall.
- **Occultist** - Your study of dark magic is often looked down upon by your peers but nevertheless its a useful. Totems of undying are often believed to be the strongest artifacts, preventing death, however, you go one step further, you can craft `revive stones` which bring back souls who have already ascended (or descended). Your active ability `Corrosio Animae` (CD: n seconds, duration: n seconds, radius: n blocks) slowly degrades the connection between the mind and the soul, allowing the soul to be stolen. Your alternate ability, `Subreptio Animae` (CD: n seconds) allows you to fire a beam of energy that collects the soul of those who have been affected by your primary ability for long enough, you will know when a soul is ready to harvest when soul-like particles appear around them.
- **Elder Sage** - If the high priest is the Emperor's right hand you are his left, you have been personally hand picked by the emperor to wield the divine swords. Having been around the best and the brightest for many years you have pioneered a new field of magic. One which disables that of others
- **The Crusader** - You are the best and bravest of the legions; lead the charge in battle to rally confidence in your fellow fighters and instill fear in the enemy. Your active ability, `<ability>` (CD: n seconds, duration: n seconds, radius: n blocks) summons divine arrows, lightning, and fire charges from the sky and applies slowness to any enemies who dare enter. Use it to block enemy charges and hold crucial passes. After many years on the battlefield you subconsciously track the footsteps of enemy soldiers, use your alternate ability, `<ability>` (CD: n seconds, duration: n seconds, radius: n blocks), to hone your senses and reveal the exact location of near by enemies to all your allies.
- **The False Prophet** - Do your job well and you will return to your homeland a hero, play your cards wrong and will be an enemy to the Golden Empire and a traitor to the Royal Nation. You assassinated a member of the Golden Empire and took their place, late at night you can still hear their voices, but what can you do now? Just act like a pawn of the Emperor and you might make it home. Use `/trigger conceal` (CD: n seconds) to hide your identity and `/trigger reveal` (CD: n seconds) to show your true self when you think it is time.
- **Knight** - You are a knight of the royal army, you have been through countless battles and have learnt some abilities throughout your journeys. Your active ability, `<ability>` (CD: n seconds, duration: n seconds, radius: n blocks), grants yourself two absorption hearts for every ally nearby, and your alternate ability, `<ability>` (CD: n seconds, duration: n seconds, radius: n blocks), grants every ally, who is not a knight, two absorption hearts.
- **Chaplain** - You do no believe in war or its supposed benefits, however, you still joined the war effort so that less souls may suffer. Primary ability, `<ability>` (CD: n seconds, duration: n seconds), is rooted in years you served in the mortician wing; you can, on command, create a home made brew of potions that grants regeneration, speed, and instant saturation. Your alternate ability, `<ability>` (CD: n seconds, duration: n seconds, radius: n blocks), allows you to spawn cobwebs around nearby enemies.
- **Worker** - The winds of fate have swept you to many places and you have had to adapt, becoming a known jack-of-all-trades in the villages you have been to. You volunteered to join the war effort to try change your destiny, but you will have to survive the war first first. Your past grants you a variety of passive abilities such as double block breaking speed, immunity to soul sand, large lung capacity, better luck, and faster movement speed through water. You also did not come to the front lines unprepared, after some guidance from villager elders, you have gained the ability, `<ability>` (CD: n seconds, duration: n seconds), which grant yourself a burst of positive status effects

## Custom Item IDs

1. armor_of_the_damned
2. eyes_of_greed
3. flesh_of_the_exiled
4. wing_of_the_condemned
5. \[Reserved Indefinitely]
6. wing_of_the_banished
7. soul_of_the_evoker
8. steel_plate
9. galvanized_steel
10. \[Reserved]
11. pure_gold
12. \[Reserved]
13. heart_of_gold
14. cut_diamond
15. perfect_diamond
16. \[Reserved]
17. refined_netherite
18. true_netherite
19. \[Reserved]
20. \[More to come...]

## Accompanying Resource Pack

A selection of slight changes in the form of a companion resource pack.
It includes the following:

- Vanilla Tweaks' HD Shield Banner Patterns
- Vanilla Tweaks' Golden Crown
