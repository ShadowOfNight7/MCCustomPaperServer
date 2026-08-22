# MCCustomPaperServer
## Overview
_"The war to end all wars... for there shall be no one left to wage another..."_


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

## Lives
Each player will start with 7 lives and will loose a life upon death. However, if a player's lives count reaches the team's minimum lives threshold they will loose no more. At three banners the minimum lives is 5, but each time a banner is broken the entire team will be vulnerable to loosing more lives, their current lives will not be reduced.

Three banners left:
- 2 of 7 lives vulnerable (min. 5 lives)

Two banners left:
- ~~2 of 7 lives vulnerable (min. 5 lives)~~ -> **4 of 7 lives vulnerable** (min. 3 lives)

Last banner left:
- ~~2 of 7 lives vulnerable (min. 5 lives)~~ -> **6 of 7 lives vulnerable** (min. 1 lives)

No banners left:
- ~~2 of 7 lives vulnerable (min. 5 lives)~~ -> **7 of 7 lives vulnerable** (min. 0 lives)

When a player looses all of their lives they will have their gamemode set to adventure and will not be able to pick up any blocks. When the last banner is broken, all players with 0 lives will be respawned with 1 life and some basic gear, in one final battle against the enemy team.

### Souls
_"You hear the horrific screams of anguish from a comrades soul as it is dissipates into nothingness. It would have floated downwards but we are already stuck in hell..."_

Souls are harvested from player via the Occultist's abilities (see Roles Descriptions for more information). Each player only has one soul per life, and will loose three max hearts if they have lost their soul. Souls can be used when standing in the AoE of an enemy banner to weaken its effects. Each soul lasts for 20 minutes and the duration stacks, however, as each soul expires the effect will also be reduced. 

First soul used: 
- Defenders' buffs reduced:
    - Regeneration ~~III~~ -> **II**
    - Resistance ~~II~~ -> **I**
    - Strength ~~II~~ -> **I**
    - Speed ~~II~~ -> **I**
    - Night Vision ~~I~~ -> **Nullified**
    - Jump Boost ~~II~~ -> **Nullified**
    - Haste ~~I~~ -> **Nullified**
    - Dolphin's Grace​‌ ~~I~~ -> **Nullified**
    - Water Breathing ~~I~~ -> **Nullified**
- Attackers' debuffs reduced:
    - Weakness ~~II~~ -> **I**
    - Slowness ~~I~~ -> **Nullified**
    - Hunger ~~III~~ -> **II**
    - Mining Fatigue ~~II~~ -> **I**
    - Darkness ~~I~~ -> **Nullified**

Second soul used: 
- Attackers' debuffs nullified:
    - Weakness ~~II~~ -> **Nullified**
    - Slowness ~~I~~ -> **Nullified**
    - Hunger ~~III~~ -> **Nullified**
    - Mining Fatigue ~~II~~ -> **Nullified**
    - Darkness ~~I~~ -> **Nullified**
- Flag passive defense reduced:
    - Flag health regeneration ~~21hp/sec~~ -> **14hp/sec**
    - Flag thorns damage ~~0.5dmg/hit~~ -> **0.35dmg/hit**
- All effects of the first soul

Third soul used:
- Defenders' buffs nullified:
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
- Flag passive defense reduced:
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

## Armor Plating & Weapon Upgrades
You can upgrade armor and weapons through various methods creating stronger version of them, but also they look really cool!

### Armor Plating
Different armor plates can be applied to armor to grant them unique buffs. Each armor piece can only have one armor plate, so choose wisely. 

#### Durability
This piece of armor has been through too much. Now, all that remains is the journey home. Its surface is marred with scratches, carvings, and hastily scrawled writings. Every tally mark scattered across it carries a painful memory; too grueling to remember; too deeply etched to forget. A lucky ace, now tatter and worn down by the elements, is tied to the helmet, a necklace, holding a faded photo the wearer can only try to remember, strung together on the wearer's back, skulls of the undead. Like its wearer it protects, it will keep enduring, through the worst of storms and the harshest of wars. Even when the battlefield is an eerie silence and the rivers have been dyed with anguish, it will not yield or break until it is home. 

#### Knockback Resist
The chains that once held the spirit down have weakened over eons, no longer is to bound by the Styx. It wanders the face of this earth, forever hunting the one who betrayed it. No mortal weapon shall make it retreat again, for it shall take no step back; no living soul will stand in its way. It has already crossed the river once, and it will not be forced back across it.

#### Speed
The piece of armor is clean, smooth, new... too new. Oh, Too green, too oblivious, and too innocent. Not long ago had this piece of armor been worn for the first time, its wearer cheering with his peers at patriotic speeches of the mustached men. The other corps stacked plates and chain mail upon their thick armor, but this piece felt light, almost hollow, perhaps it was. The young boy proudly wore the telescope on his back, binoculars on his waist, and his single flare, unbeknownst to the connotations. God speed young one, may you out run fate, as only the flare is expected to carry the message back.

#### Health
A heart still beats beneath the armor, though no living flesh remains to carry it. Veins crawl across the plating like roots through dead soil, pulsing with a crimson light that refuses to fade. Each vessel is thick and swollen, carrying whatever blood, ichor, or lifeblood remains within its wearer. The heart does not beat because it must; it beats because it remembers how. It has endured wounds that should have stopped it, blades that should have pierced it, and years that should have silenced it. As long as that heart continues to beat, so too does its wearer.

#### Absorption
Thick metallic plates strapped directly onto the wearer's armor, protecting the areas that are most vial. They’re just sturdy enough to absorb a few hits; giving the wearer a precious moment to duck their head back into the trenches. The design is crude and heavy, but when the metal rings instead of bone, their burden feels insignificant.

#### Blindness
Carved right onto the chestplate is forgotten symbol found on the silence armor trim. Worn by the most elite followers of the silent abyss cult, those directly under the warden. The wearer's eyes are blindfolded and soles padded, as in the darkness their eyes are no longer needed and the pure silence will not disturbed by footsteps. Its wear channels the trapped souls to steal the vision of hostile surface-born.

#### Barrier
Its wearer is said to be of elysian origins; adorned this armor to aid in the completion of their divine mandate. The armor are embellished with a halo of purity and the eyes of true angels, judging the actions of the wrathful, weighing the hearts of the sinful. It intervenes in the wearer's fate when it deems fit, stopping the sharpest of blades and the strongest of axes before it can reach the evangelist.

#### Resistance
There is no elegance to this armor, nor was there ever meant to be. Layer upon layer of scarred plating has been bolted over the original shell, each piece salvaged from another battle, another corpse, another war. The metal is blackened by fire and stained by things better left unnamed, yet beneath it all the armor remains whole. Blows that should shatter bone merely dent its surface; flames that should consume it leave only another mark among countless others. It can not stop the violence, it can only prevent it from reaching what lies beneath. Every scar is proof that something tried, and failed.

#### Experience
Runes of the Standard Galactic Alphabet are etched across every inch of the armor, arranged in deliberate columns. When the moon dims and there seems more stars than usual something glows faintly beneath the surface. The words are not meant to be read, and yet it holds records meant to be remembered. Every rune marks a battle, a lesson, a victory, or a mistake that was never made twice. The armor has no voice, yet it carries the knowledge of civilizations long since forgotten. To wear it is to inherit their memories, their instincts, and the lessons bought with blood. The longer it fights, the more it remembers. When the these battle fields have become insignificant and the sun sets one final time, it will be here waiting for a new civilization to rise from the nothingness.

### Melee Weapons
TBA

### Ranged Weapons

#### Repeating Crossbow

#### Hunting Crossbow

#### Scoped Crossbow

#### Elven Bow

#### Short Bow

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
- In-house "Armor Plating" Trim Textures
- Grave/Digger Items v1.0.0
