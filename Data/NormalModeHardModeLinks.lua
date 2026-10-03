---@type GL
local _, GL = ...;

---@class NormalModeHardModeLinks : Data
GL.Data = GL.Data or {};

local NormalModeHardModeLinks = {
    -- Cobra-Lash Boots
    [30104] = 33482,
    -- Gladiator's Felweave Amice
    [30186] = 42718,
    -- Gladiator's Felweave Cowl
    [30187] = 42719,
    -- Gladiator's Felweave Handguards
    [30188] = 42720,
    -- Gladiator's Felweave Raiment
    [30200] = 42721,
    -- Gladiator's Felweave Trousers
    [30201] = 42722,
    -- Reckless Fire Opal
    [30547] = 30551,
    -- Shifting Tanzanite
    [30549] = 30574,
    -- Misty Chrysoprase
    [30550] = 30560,
    -- Glinting Tanzanite
    [30553] = 30556,
    -- Stalwart Fire Opal
    [30554] = 30558,
    -- Nimble Chrysoprase
    [30575] = 30605,
    -- Potent Fire Opal
    [30588] = 30593,
    -- Steady Chrysoprase
    [30592] = 30601,
    -- Gladiator's Kodohide Gloves
    [31375] = 42680,
    -- Gladiator's Kodohide Helm
    [31376] = 42681,
    -- Gladiator's Kodohide Legguards
    [31377] = 42682,
    -- Gladiator's Kodohide Spaulders
    [31378] = 42683,
    -- Gladiator's Ringmail Armor
    [31396] = 42664,
    -- Gladiator's Ringmail Gauntlets
    [31397] = 42665,
    -- Gladiator's Ringmail Helm
    [31400] = 42666,
    -- Gladiator's Ringmail Leggings
    [31406] = 42667,
    -- Gladiator's Ringmail Spaulders
    [31407] = 42668,
    -- Gladiator's Mooncloth Gloves
    [31409] = 42703,
    -- Gladiator's Mooncloth Hood
    [31410] = 42704,
    -- Gladiator's Mooncloth Leggings
    [31411] = 42705,
    -- Gladiator's Mooncloth Mantle
    [31412] = 42706,
    -- Gladiator's Mooncloth Robe
    [31413] = 42707,
    -- Gladiator's Ornamented Chestguard
    [31613] = 42635,
    -- Gladiator's Ornamented Gloves
    [31614] = 42636,
    -- Gladiator's Ornamented Headcover
    [31616] = 42637,
    -- Gladiator's Ornamented Legplates
    [31618] = 42638,
    -- Gladiator's Ornamented Spaulders
    [31619] = 42639,
    -- Reins of the Cobalt Riding Talbuk
    [31829] = 31830,
    -- Reins of the Silver Riding Talbuk
    [31831] = 31832,
    -- Reins of the Tan Riding Talbuk
    [31833] = 31834,
    -- Reins of the White Riding Talbuk
    [31835] = 31836,
    -- Teardrop Crimson Spinel
    [32195] = 35489,
    -- Runed Crimson Spinel
    [32196] = 35488,
    -- Bright Crimson Spinel
    [32197] = 35487,
    -- Subtle Lionseye
    [32198] = 32208,
    -- Sparkling Empyrean Sapphire
    [32201] = 32202,
    -- Smooth Lionseye
    [32205] = 32207,
    -- Rigid Empyrean Sapphire
    [32206] = 32210,
    -- Shifting Shadowsong Amethyst
    [32212] = 32213,
    -- Glinting Shadowsong Amethyst
    [32214] = 32220,
    -- Design: Delicate Crimson Spinel
    [32277] = 32283,
    -- Design: Subtle Lionseye
    [32284] = 32294,
    -- Design: Sparkling Empyrean Sapphire
    [32287] = 32288,
    -- Design: Smooth Lionseye
    [32291] = 32293,
    -- Design: Rigid Empyrean Sapphire
    [32292] = 32296,
    -- Design: Shifting Shadowsong Amethyst
    [32298] = 32299,
    -- Design: Glinting Shadowsong Amethyst
    [32300] = 32306,
    -- Design: Purified Shadowsong Amethyst
    [32302] = 32311,
    -- Magtheridon's Head
    [32385] = 32386,
    -- Plans: Swiftsteel Bracers
    [32736] = 35531,
    -- Plans: Swiftsteel Shoulders
    [32737] = 35532,
    -- Plans: Dawnsteel Bracers
    [32738] = 35529,
    -- Plans: Dawnsteel Shoulders
    [32739] = 35530,
    -- Pattern: Bracers of Renewed Life
    [32744] = 35519,
    -- Pattern: Shoulderpads of Renewed Life
    [32745] = 35523,
    -- Pattern: Swiftstrike Bracers
    [32746] = 35527,
    -- Pattern: Swiftstrike Shoulders
    [32747] = 35528,
    -- Pattern: Bindings of Lightning Reflexes
    [32748] = 35517,
    -- Pattern: Shoulders of Lightning Reflexes
    [32749] = 35524,
    -- Pattern: Living Earth Bindings
    [32750] = 35520,
    -- Pattern: Living Earth Shoulders
    [32751] = 35521,
    -- Pattern: Swiftheal Wraps
    [32752] = 35526,
    -- Pattern: Swiftheal Mantle
    [32753] = 35525,
    -- Pattern: Bracers of Nimble Thought
    [32754] = 35518,
    -- Pattern: Mantle of Nimble Thought
    [32755] = 35522,
    -- Warglaive of Azzinoth
    [32837] = 32838,
    -- Rigid Bladestone
    [33142] = 33141,
    -- Battlemaster's Determination
    [33832] = 34578,
    -- Battlemaster's Audacity
    [34049] = 34579,
    -- Battlemaster's Perseverance
    [34050] = 34580,
    -- The Horseman's Signet Ring
    [34073] = 33958,
    -- Witches Band
    [34074] = 33957,
    -- Ring of Ghoulish Delight
    [34075] = 33959,
    -- Battlemaster's Depravity
    [34162] = 34577,
    -- Battlemaster's Cruelty
    [34163] = 34576,
    -- Design: Loop of Forged Power
    [35198] = 35536,
    -- Design: Ring of Flowing Life
    [35199] = 35538,
    -- Design: Hard Khorium Band
    [35200] = 35534,
    -- Design: Pendant of Sunfire
    [35201] = 35537,
    -- Design: Amulet of Flowing Life
    [35202] = 35533,
    -- Design: Hard Khorium Choker
    [35203] = 35535,
    -- Pattern: Sunfire Handwraps
    [35204] = 35551,
    -- Pattern: Hands of Eternal Light
    [35205] = 35544,
    -- Pattern: Sunfire Robe
    [35206] = 35552,
    -- Pattern: Robe of Eternal Light
    [35207] = 35548,
    -- Plans: Sunblessed Gauntlets
    [35208] = 35556,
    -- Plans: Hard Khorium Battlefists
    [35209] = 35553,
    -- Plans: Sunblessed Breastplate
    [35210] = 35555,
    -- Plans: Hard Khorium Battleplate
    [35211] = 35554,
    -- Pattern: Leather Gauntlets of the Sun
    [35212] = 35546,
    -- Pattern: Fletcher's Gloves of the Phoenix
    [35213] = 35541,
    -- Pattern: Gloves of Immortal Dusk
    [35214] = 35542,
    -- Pattern: Sun-Drenched Scale Gloves
    [35215] = 35550,
    -- Pattern: Leather Chestguard of the Sun
    [35216] = 35545,
    -- Pattern: Embrace of the Phoenix
    [35217] = 35540,
    -- Pattern: Carapace of Sun and Shadow
    [35218] = 35539,
    -- Pattern: Sun-Drenched Scale Chestguard
    [35219] = 35549,
    -- X-51 Nether-Rocket X-TREME
    [35226] = 49286,
    -- Battlemaster's Alacrity
    [35326] = 35327,
    -- Reckless Pyrestone
    [35760] = 32219,
    -- Design: Quick Lionseye
    [35763] = 35768,
    -- Design: Steady Seaspray Emerald
    [35764] = 35766,
    -- Design: Forceful Seaspray Emerald
    [35765] = 35769,
    -- Dragonscale Leg Armor
    [38377] = 56550,
    -- Smooth Ornate Dawnstone
    [38550] = 38546,
    -- Big Battle Bear
    [38576] = 49282,
    -- Delicate Cardinal Ruby
    [40112] = 40114,
    -- Brilliant Cardinal Ruby
    [40113] = 40123,
    -- Subtle King's Amber
    [40115] = 40126,
    -- Sparkling Majestic Zircon
    [40120] = 40121,
    -- Smooth King's Amber
    [40124] = 40117,
    -- Shifting Dreadstone
    [40130] = 40136,
    -- Timeless Dreadstone
    [40132] = 40164,
    -- Regal Eye of Zul
    [40138] = 40167,
    -- Deadly Ametrine
    [40147] = 40156,
    -- Lucent Ametrine
    [40149] = 40158,
    -- Deft Ametrine
    [40150] = 40159,
    -- Stalwart Ametrine
    [40160] = 40161,
    -- Jagged Eye of Zul
    [40165] = 40140,
    -- Misty Eye of Zul
    [40171] = 40176,
    -- Lightning Eye of Zul
    [40172] = 40177,
    -- Turbid Eye of Zul
    [40173] = 40178,
    -- Energized Eye of Zul
    [40179] = 40174,
    -- Radiant Eye of Zul
    [40180] = 40181,
    -- Delicate Dragon's Eye
    [42143] = 36766,
    -- Sparkling Dragon's Eye
    [42145] = 42146,
    -- Brilliant Dragon's Eye
    [42148] = 42144,
    -- Smooth Dragon's Eye
    [42149] = 42153,
    -- Subtle Dragon's Eye
    [42151] = 42157,
    -- Furious Gladiator's Fleshslicer
    [42271] = 45963,
    -- Relentless Gladiator's Fleshslicer
    [42272] = 48432,
    -- Reins of the Black War Mammoth
    [43956] = 44077,
    -- Reins of the Ice Mammoth
    [43958] = 44080,
    -- Reins of the Grand Ice Mammoth
    [43961] = 44086,
    -- Frenzyheart Insignia of Fury
    [44073] = 44869,
    -- Oracle Talisman of Ablution
    [44074] = 44870,
    -- Reins of the Grand Black War Mammoth
    [44083] = 43959,
    -- Arcanum of Torment
    [44149] = 50367,
    -- Arcanum of the Stalwart Protector
    [44150] = 50369,
    -- Arcanum of Blissful Mending
    [44152] = 50370,
    -- Arcanum of Burning Mysteries
    [44159] = 50368,
    -- Reins of the Black War Bear
    [44223] = 44224,
    -- Reins of the Armored Brown Bear
    [44225] = 44226,
    -- Reins of the Wooly Mammoth
    [44230] = 44231,
    -- Reins of the Traveler's Tundra Mammoth
    [44234] = 44235,
    -- Key to the Focusing Iris
    [44569] = 44582,
    -- Heroic Key to the Focusing Iris
    [44577] = 44581,
    -- Archivum Data Disc
    [45506] = 45857,
    -- Brilliant Stormjewel
    [45882] = 45883,
    -- Reply-Code Alpha
    [46052] = 46053,
    -- Aegis Legguards
    [46222] = 46223,
    -- Swift Purple Raptor
    [46743] = 46760,
    -- Swift Moonsaber
    [46744] = 46759,
    -- Great Red Elekk
    [46745] = 46756,
    -- White Skeletal Warhorse
    [46746] = 46764,
    -- Turbostrider
    [46747] = 46763,
    -- Swift Violet Ram
    [46748] = 46762,
    -- Swift Burgundy Wolf
    [46749] = 46757,
    -- Great Golden Kodo
    [46750] = 46755,
    -- Swift Red Hawkstrider
    [46751] = 46761,
    -- Swift Gray Steed
    [46752] = 46758,
    -- Crystal Plated Vanguard
    [46964] = 46963,
    -- Breastplate of Cruel Intent
    [46965] = 46960,
    -- Band of the Violent Temperment
    [46966] = 46959,
    -- Boneshatter Armplates
    [46967] = 46961,
    -- Chestplate of the Towering Monstrosity
    [46968] = 46962,
    -- Steel Bladebreaker
    [46969] = 46958,
    -- Drape of the Untamed Predator
    [46971] = 46970,
    -- Cord of the Tenebrous Mist
    [46973] = 46972,
    -- Leggings of the Broken Beast
    [46975] = 46974,
    -- Shawl of the Refreshing Winds
    [46977] = 46976,
    -- Blade of Tarasque
    [46979] = 46980,
    -- Boots of the Courageous
    [46986] = 46985,
    -- Boots of the Unrelenting Storm
    [46989] = 46988,
    -- Belt of the Ice Burrower
    [46991] = 46990,
    -- Flowing Vestments of Ascent
    [46993] = 46992,
    -- Talonstrike
    [46995] = 46994,
    -- Cuirass of Calamitous Fate
    [47000] = 47004,
    -- Lionhead Slasher
    [47001] = 46996,
    -- Bloodbath Belt
    [47002] = 46999,
    -- Dawnbreaker Greaves
    [47003] = 46997,
    -- Solace of the Defeated
    [47059] = 47041,
    -- Charge of the Demon Lord
    [47060] = 47043,
    -- Legguards of Feverish Dedication
    [47061] = 47052,
    -- Leggings of the Soothing Touch
    [47062] = 47051,
    -- Pride of the Eredar
    [47063] = 47042,
    -- Symbol of Transgression
    [47064] = 47053,
    -- Bracers of the Autumn Willow
    [47066] = 47055,
    -- Legplates of Failing Light
    [47067] = 47057,
    -- Bracers of Cloudy Omen
    [47068] = 47056,
    -- Bracers of the Untold Massacre
    [47074] = 47073,
    -- Ring of Callous Aggression
    [47075] = 47070,
    -- Girdle of Bloodied Scars
    [47076] = 47072,
    -- Treads of the Icewalker
    [47077] = 47071,
    -- Justicebringer
    [47078] = 47069,
    -- Cord of Biting Cold
    [47084] = 47081,
    -- Bastion of Purity
    [47085] = 47079,
    -- Chestplate of the Frostborn Hero
    [47086] = 47082,
    -- Legguards of Concealed Hatred
    [47087] = 47083,
    -- Satrina's Impeding Scarab
    [47088] = 47080,
    -- Cloak of Displacement
    [47089] = 47095,
    -- Boots of Tremoring Earth
    [47090] = 47099,
    -- Vestments of the Shattered Fellowship
    [47096] = 47094,
    -- Boots of the Mourning Widow
    [47097] = 47092,
    -- Vambraces of the Broken Bond
    [47098] = 47093,
    -- Sabatons of Ruthless Judgment
    [47109] = 47106,
    -- The Executioner's Malice
    [47110] = 47105,
    -- Bracers of the Shieldmaiden
    [47111] = 47108,
    -- Belt of the Merciless Killer
    [47112] = 47107,
    -- Twin Spike
    [47113] = 47104,
    -- Skyweaver Robes
    [47129] = 47126,
    -- Lupine Longstaff
    [47130] = 47114,
    -- Death's Verdict
    [47131] = 47115,
    -- Legguards of Ascension
    [47132] = 47121,
    -- The Arbiter's Muse
    [47133] = 47116,
    -- Bindings of Dark Essence
    [47143] = 47141,
    -- Wail of the Val'kyr
    [47144] = 47139,
    -- Cord of Pale Thorns
    [47145] = 47140,
    -- Chalice of Searing Light
    [47146] = 47138,
    -- Breastplate of the Frozen Lake
    [47147] = 47142,
    -- Belt of Deathly Dominion
    [47153] = 47152,
    -- Greaves of the 7th Legion
    [47154] = 47150,
    -- Bracers of Dark Determination
    [47155] = 47151,
    -- Stormpike Cleaver
    [47156] = 47148,
    -- Signet of the Traitor King
    [47157] = 47149,
    -- Reign of the Unliving
    [47188] = 47182,
    -- Leggings of the Deepening Void
    [47189] = 47187,
    -- Legwraps of the Awakening
    [47190] = 47186,
    -- Legguards of the Lurking Threat
    [47191] = 47184,
    -- Strength of the Nerub
    [47192] = 47183,
    -- Footpads of the Icy Floe
    [47205] = 47194,
    -- Misery's End
    [47206] = 47193,
    -- Belt of the Forgotten Martyr
    [47207] = 47195,
    -- Armbands of the Ashen Saint
    [47208] = 47203,
    -- Chestguard of Flowing Elements
    [47209] = 47204,
    -- Ring of the Darkmender
    [47224] = 47223,
    -- Gloves of the Lifeless Touch
    [47236] = 47235,
    -- Band of Deplorable Violence
    [47237] = 47054,
    -- Maiden's Favor
    [47238] = 47225,
    -- Archon Glaive
    [47239] = 47233,
    -- Gloves of Bitter Reprisal
    [47240] = 47234,
    -- Cuirass of Cruel Intent
    [47251] = 47412,
    -- Ring of the Violent Temperament
    [47252] = 47413,
    -- Boneshatter Vambraces
    [47253] = 47414,
    -- Hauberk of the Towering Monstrosity
    [47254] = 47415,
    -- Stygian Bladebreaker
    [47255] = 47416,
    -- Drape of the Refreshing Winds
    [47256] = 47417,
    -- Cloak of the Untamed Predator
    [47257] = 47418,
    -- Belt of the Tenebrous Mist
    [47258] = 47419,
    -- Legwraps of the Broken Beast
    [47259] = 47420,
    -- Forlorn Barrier
    [47260] = 47421,
    -- Barb of Tarasque
    [47261] = 47422,
    -- Boots of the Harsh Winter
    [47262] = 47423,
    -- Sabatons of the Courageous
    [47263] = 47424,
    -- Flowing Robes of Ascent
    [47264] = 47425,
    -- Binding of the Ice Burrower
    [47265] = 47426,
    -- Blood Fury
    [47266] = 47427,
    -- Death's Head Crossbow
    [47267] = 47428,
    -- Bloodbath Girdle
    [47268] = 47429,
    -- Dawnbreaker Sabatons
    [47269] = 47430,
    -- Solace of the Fallen
    [47271] = 47432,
    -- Charge of the Eredar
    [47272] = 47433,
    -- Legplates of Feverish Dedication
    [47273] = 47434,
    -- Pants of the Soothing Touch
    [47274] = 47435,
    -- Pride of the Demon Lord
    [47275] = 47436,
    -- Talisman of Heedless Sins
    [47276] = 47437,
    -- Bindings of the Autumn Willow
    [47277] = 47438,
    -- Circle of the Darkmender
    [47278] = 47439,
    -- Leggings of Failing Light
    [47279] = 47440,
    -- Wristwraps of Cloudy Omen
    [47280] = 47441,
    -- Bracers of the Silent Massacre
    [47281] = 47442,
    -- Band of Callous Aggression
    [47282] = 47443,
    -- Belt of Bloodied Scars
    [47283] = 47444,
    -- Icewalker Treads
    [47284] = 47445,
    -- Dual-blade Butcher
    [47285] = 47446,
    -- Belt of Biting Cold
    [47286] = 47447,
    -- Bastion of Resolve
    [47287] = 47448,
    -- Chestplate of the Frostwolf Hero
    [47288] = 47449,
    -- Leggings of Concealed Hatred
    [47289] = 47450,
    -- Juggernaut's Vitality
    [47290] = 47451,
    -- Shroud of Displacement
    [47291] = 47452,
    -- Robes of the Shattered Fellowship
    [47292] = 47453,
    -- Sandals of the Mourning Widow
    [47293] = 47454,
    -- Bracers of the Broken Bond
    [47294] = 47455,
    -- Sabatons of Tremoring Earth
    [47295] = 47456,
    -- Greaves of Ruthless Judgment
    [47296] = 47457,
    -- The Executioner's Vice
    [47297] = 47458,
    -- Armguards of the Shieldmaiden
    [47298] = 47459,
    -- Belt of the Pitiless Killer
    [47299] = 47460,
    -- Gouge of the Frigid Heart
    [47300] = 47461,
    -- Skyweaver Vestments
    [47301] = 47462,
    -- Twin's Pact
    [47302] = 47463,
    -- Death's Choice
    [47303] = 47464,
    -- Legplates of Ascension
    [47304] = 47465,
    -- Legionnaire's Gorget
    [47305] = 47466,
    -- Dark Essence Bindings
    [47306] = 47467,
    -- Cry of the Val'kyr
    [47307] = 47468,
    -- Belt of Pale Thorns
    [47308] = 47469,
    -- Mystifying Charm
    [47309] = 47470,
    -- Chestplate of the Frozen Lake
    [47310] = 47471,
    -- Waistguard of Deathly Dominion
    [47311] = 47472,
    -- Greaves of the Saronite Citadel
    [47312] = 47473,
    -- Armbands of Dark Determination
    [47313] = 47474,
    -- Hellscream Slicer
    [47314] = 47475,
    -- Band of the Traitor King
    [47315] = 47476,
    -- Reign of the Dead
    [47316] = 47477,
    -- Breeches of the Deepening Void
    [47317] = 47478,
    -- Leggings of the Awakening
    [47318] = 47479,
    -- Leggings of the Lurking Threat
    [47319] = 47480,
    -- Might of the Nerub
    [47320] = 47481,
    -- Boots of the Icy Floe
    [47321] = 47482,
    -- Suffering's End
    [47322] = 47483,
    -- Girdle of the Forgotten Martyr
    [47323] = 47484,
    -- Bindings of the Ashen Saint
    [47324] = 47485,
    -- Cuirass of Flowing Elements
    [47325] = 47486,
    -- Handwraps of the Lifeless Touch
    [47326] = 47487,
    -- Lurid Manifestation
    [47327] = 47489,
    -- Maiden's Adoration
    [47328] = 47490,
    -- Hellion Glaive
    [47329] = 47491,
    -- Gauntlets of Bitter Reprisal
    [47330] = 47492,
    -- Vest of Calamitous Fate
    [47431] = 47270,
    -- Saronite Swordbreakers
    [47571] = 47570,
    -- Titanium Spikeguards
    [47573] = 47572,
    -- Sunforged Bracers
    [47575] = 47574,
    -- Crusader's Dragonscale Bracers
    [47577] = 47576,
    -- Black Chitin Bracers
    [47580] = 47579,
    -- Bracers of Swift Death
    [47582] = 47581,
    -- Moonshadow Armguards
    [47583] = 47584,
    -- Bejeweled Wizard's Bracers
    [47586] = 47585,
    -- Royal Moonshroud Bracers
    [47588] = 47587,
    -- Titanium Razorplate
    [47590] = 47589,
    -- Breastplate of the White Knight
    [47592] = 47591,
    -- Sunforged Breastplate
    [47594] = 47593,
    -- Crusader's Dragonscale Breastplate
    [47595] = 47596,
    -- Ensorcelled Nerubian Breastplate
    [47597] = 47598,
    -- Knightbane Carapace
    [47599] = 47600,
    -- Lunar Eclipse Robes
    [47602] = 47601,
    -- Merlin's Robe
    [47604] = 47603,
    -- Royal Moonshroud Robe
    [47605] = 47606,
    -- Gauntlets of Rising Anger
    [47609] = 47917,
    -- Girdle of the Impaler
    [47614] = 47925,
    -- Shoulderguards of the Spirit Walker
    [47616] = 47926,
    -- Firestorm Ring
    [47618] = 47928,
    -- Amulet of Binding Elements
    [47619] = 47930,
    -- Leggings of the Demonic Messenger
    [47620] = 47931,
    -- Girdle of the Farseer
    [47621] = 47932,
    -- Plans: Breastplate of the White Knight
    [47622] = 47640,
    -- Plans: Saronite Swordbreakers
    [47623] = 47641,
    -- Plans: Titanium Razorplate
    [47624] = 47644,
    -- Plans: Titanium Spikeguards
    [47625] = 47645,
    -- Plans: Sunforged Breastplate
    [47626] = 47643,
    -- Plans: Sunforged Bracers
    [47627] = 47642,
    -- Pattern: Ensorcelled Nerubian Breastplate
    [47628] = 47650,
    -- Pattern: Black Chitin Bracers
    [47629] = 47646,
    -- Pattern: Crusader's Dragonscale Breastplate
    [47630] = 47649,
    -- Pattern: Crusader's Dragonscale Bracers
    [47631] = 47648,
    -- Pattern: Lunar Eclipse Robes
    [47632] = 47652,
    -- Pattern: Moonshadow Armguards
    [47633] = 47653,
    -- Pattern: Knightbane Carapace
    [47634] = 47651,
    -- Pattern: Bracers of Swift Death
    [47635] = 47647,
    -- Pattern: Bejeweled Wizard's Bracers
    [47654] = 47639,
    -- Pattern: Merlin's Robe
    [47655] = 47638,
    -- Pattern: Royal Moonshroud Bracers
    [47656] = 47637,
    -- Pattern: Royal Moonshroud Robe
    [47657] = 47636,
    -- Felspark Bindings
    [47663] = 47927,
    -- Belt of the Winter Solstice
    [47669] = 47929,
    -- Dirk of the Night Watch
    [47676] = 47938,
    -- Endurance of the Infernal
    [47679] = 47939,
    -- Armguards of the Nether Lord
    [47680] = 47935,
    -- Sentinel Scouting Greaves
    [47683] = 47933,
    -- Loop of the Twin Val'kyr
    [47700] = 47955,
    -- Planestalker Signet
    [47703] = 47934,
    -- Girdle of the Nether Champion
    [47711] = 47937,
    -- Binding Light
    [47728] = 47947,
    -- Icefall Blade
    [47736] = 47953,
    -- Reckoning
    [47737] = 47951,
    -- Sabatons of the Lingering Vortex
    [47738] = 47952,
    -- Armor of Shifting Shadows
    [47739] = 47954,
    -- The Diplomat
    [47740] = 47950,
    -- Baelgun's Heavy Crossbow
    [47741] = 47975,
    -- Chalice of Benedictus
    [47742] = 47958,
    -- Enlightenment
    [47743] = 47960,
    -- Gloves of the Azure Prophet
    [47744] = 47961,
    -- Gloves of Looming Shadow
    [47745] = 47956,
    -- Helm of the Snowy Grotto
    [47746] = 47959,
    -- Darkbane Pendant
    [47747] = 47957,
    -- Khadgar's Gauntlets of Triumph
    [47753] = 47762,
    -- Khadgar's Hood of Triumph
    [47754] = 47761,
    -- Khadgar's Leggings of Triumph
    [47755] = 47760,
    -- Khadgar's Robe of Triumph
    [47756] = 47759,
    -- Khadgar's Shoulderpads of Triumph
    [47757] = 47758,
    -- Sunstrider's Shoulderpads of Triumph
    [47768] = 47767,
    -- Sunstrider's Robe of Triumph
    [47769] = 47766,
    -- Sunstrider's Leggings of Triumph
    [47770] = 47765,
    -- Sunstrider's Hood of Triumph
    [47771] = 47764,
    -- Sunstrider's Gauntlets of Triumph
    [47772] = 47763,
    -- Kel'Thuzad's Hood of Triumph
    [47778] = 47789,
    -- Kel'Thuzad's Robe of Triumph
    [47779] = 47791,
    -- Kel'Thuzad's Leggings of Triumph
    [47780] = 47790,
    -- Kel'Thuzad's Shoulderpads of Triumph
    [47781] = 47792,
    -- Kel'Thuzad's Gloves of Triumph
    [47782] = 47788,
    -- Gul'dan's Gloves of Triumph
    [47803] = 47797,
    -- Gul'dan's Hood of Triumph
    [47804] = 47796,
    -- Gul'dan's Leggings of Triumph
    [47805] = 47795,
    -- Gul'dan's Robe of Triumph
    [47806] = 47794,
    -- Gul'dan's Shoulderpads of Triumph
    [47807] = 47793,
    -- The Lion's Maw
    [47808] = 47966,
    -- Argent Resolve
    [47809] = 47962,
    -- Crusader's Glory
    [47810] = 47967,
    -- Chestguard of the Warden
    [47811] = 47964,
    -- Vigilant Ward
    [47812] = 47963,
    -- Helmet of the Crypt Lord
    [47813] = 47965,
    -- Westfall Saber
    [47814] = 47971,
    -- Cold Convergence
    [47815] = 47968,
    -- The Grinder
    [47816] = 47973,
    -- Pauldrons of the Timeless Hunter
    [47829] = 47969,
    -- Legplates of the Silver Hand
    [47830] = 47970,
    -- Spaulders of the Snow Bandit
    [47832] = 47972,
    -- Fordragon Blades
    [47834] = 47979,
    -- Bulwark of the Royal Guard
    [47835] = 47978,
    -- Legplates of the Immortal Spider
    [47836] = 47976,
    -- Cinch of the Undying
    [47837] = 47977,
    -- Vestments of the Sleepless
    [47838] = 47974,
    -- Collar of Unending Torment
    [47849] = 47988,
    -- Bracers of the Northern Stalker
    [47850] = 47989,
    -- Gauntlets of Mounting Anger
    [47851] = 47990,
    -- Dreadscale Bracers
    [47852] = 47991,
    -- Acidmaw Treads
    [47853] = 47992,
    -- Gormok's Band
    [47854] = 47993,
    -- Icehowl Binding
    [47855] = 47994,
    -- Scepter of Imprisoned Souls
    [47856] = 47995,
    -- Pauldrons of the Glacial Wilds
    [47857] = 47996,
    -- Girdle of the Frozen Reach
    [47858] = 47997,
    -- Belt of the Impaler
    [47859] = 47998,
    -- Pauldrons of the Spirit Walker
    [47860] = 47999,
    -- Felspark Bracers
    [47861] = 48000,
    -- Firestorm Band
    [47862] = 48001,
    -- Belt of the Bloodhoof Emissary
    [47863] = 48002,
    -- Pendant of Binding Elements
    [47864] = 48003,
    -- Legwraps of the Demonic Messenger
    [47865] = 48004,
    -- Darkspear Ritual Binding
    [47866] = 48005,
    -- Warsong Poacher's Greaves
    [47867] = 48006,
    -- Planestalker Band
    [47868] = 48007,
    -- Armplates of the Nether Lord
    [47869] = 48008,
    -- Belt of the Nether Champion
    [47870] = 48009,
    -- Orcish Deathblade
    [47871] = 48010,
    -- Fortitude of the Infernal
    [47872] = 48011,
    -- Sunreaver Magus' Sandals
    [47873] = 48012,
    -- Sunreaver Disciple's Blade
    [47874] = 48013,
    -- Sunreaver Ranger's Helm
    [47875] = 48014,
    -- Sunreaver Champion's Faceplate
    [47876] = 48015,
    -- Sunreaver Defender's Pauldrons
    [47877] = 48016,
    -- Sunreaver Assassin's Gloves
    [47878] = 48017,
    -- Fetish of Volatile Power
    [47879] = 48018,
    -- Binding Stone
    [47880] = 48019,
    -- Vengeance of the Forsaken
    [47881] = 48020,
    -- Eitrigg's Oath
    [47882] = 48021,
    -- Widebarrel Flintlock
    [47883] = 48022,
    -- Edge of Agony
    [47884] = 48023,
    -- Greaves of the Lingering Vortex
    [47885] = 48024,
    -- Nemesis Blade
    [47886] = 48025,
    -- Vest of Shifting Shadows
    [47887] = 48026,
    -- Band of the Twin Val'kyr
    [47888] = 48027,
    -- Looming Shadow Wraps
    [47889] = 48028,
    -- Darkbane Amulet
    [47890] = 48030,
    -- Helm of the High Mesa
    [47891] = 48034,
    -- Illumination
    [47892] = 48036,
    -- Sen'jin Ritualist Gloves
    [47893] = 48038,
    -- Mace of the Earthborn Chieftain
    [47894] = 48039,
    -- Pride of the Kor'kron
    [47895] = 48040,
    -- Stoneskin Chestplate
    [47896] = 48041,
    -- Helm of the Crypt Lord
    [47897] = 48042,
    -- Frostblade Hatchet
    [47898] = 48043,
    -- Ardent Guard
    [47899] = 48044,
    -- Perdition
    [47900] = 48045,
    -- Pauldrons of the Shadow Hunter
    [47901] = 48046,
    -- Forsaken Bonecarver
    [47903] = 48048,
    -- Shoulderpads of the Snow Bandit
    [47904] = 48049,
    -- Blackhorn Bludgeon
    [47905] = 48050,
    -- Robes of the Sleepless
    [47906] = 48051,
    -- Darkmaw Crossbow
    [47907] = 48052,
    -- Sunwalker Legguards
    [47908] = 48053,
    -- Belt of the Eternal
    [47909] = 48054,
    -- Aegis of the Coliseum
    [47910] = 48055,
    -- Lightbane Focus
    [47913] = 48032,
    -- Collar of Ceaseless Torment
    [47915] = 47607,
    -- Armbands of the Northern Stalker
    [47916] = 47610,
    -- Dreadscale Armguards
    [47918] = 47611,
    -- Acidmaw Boots
    [47919] = 47608,
    -- Carnivorous Band
    [47920] = 47578,
    -- Icehowl Cinch
    [47921] = 47617,
    -- Rod of Imprisoned Souls
    [47922] = 47612,
    -- Shoulderpads of the Glacial Wilds
    [47923] = 47613,
    -- Belt of the Frozen Reach
    [47924] = 47615,
    -- Sandals of the Silver Magus
    [47940] = 47721,
    -- Blade of the Silver Disciple
    [47941] = 47724,
    -- Helm of the Silver Ranger
    [47942] = 47718,
    -- Faceplate of the Silver Champion
    [47943] = 47717,
    -- Pauldrons of the Silver Defender
    [47944] = 47720,
    -- Gloves of the Silver Assassin
    [47945] = 47719,
    -- Talisman of Volatile Power
    [47946] = 47726,
    -- Victor's Call
    [47948] = 47725,
    -- Fervor of the Frostborn
    [47949] = 47727,
    -- Velen's Gloves of Triumph
    [47983] = 48037,
    -- Velen's Cowl of Triumph
    [47984] = 48035,
    -- Velen's Leggings of Triumph
    [47985] = 48033,
    -- Velen's Robe of Triumph
    [47986] = 48031,
    -- Velen's Shoulderpads of Triumph
    [47987] = 48029,
    -- Anguish
    [48056] = 47911,
    -- Zabra's Shoulderpads of Triumph
    [48062] = 48061,
    -- Zabra's Robe of Triumph
    [48063] = 48060,
    -- Zabra's Leggings of Triumph
    [48064] = 48059,
    -- Zabra's Cowl of Triumph
    [48065] = 48058,
    -- Zabra's Gloves of Triumph
    [48066] = 48057,
    -- Velen's Handwraps of Triumph
    [48077] = 48086,
    -- Velen's Circlet of Triumph
    [48078] = 48085,
    -- Velen's Pants of Triumph
    [48079] = 48084,
    -- Velen's Raiments of Triumph
    [48080] = 48083,
    -- Velen's Mantle of Triumph
    [48081] = 48082,
    -- Zabra's Mantle of Triumph
    [48092] = 48091,
    -- Zabra's Raiments of Triumph
    [48093] = 48090,
    -- Zabra's Pants of Triumph
    [48094] = 48089,
    -- Zabra's Circlet of Triumph
    [48095] = 48088,
    -- Zabra's Handwraps of Triumph
    [48096] = 48087,
    -- Malfurion's Handguards of Triumph
    [48133] = 48142,
    -- Malfurion's Headpiece of Triumph
    [48134] = 48141,
    -- Malfurion's Leggings of Triumph
    [48135] = 48140,
    -- Malfurion's Robe of Triumph
    [48136] = 48139,
    -- Malfurion's Spaulders of Triumph
    [48137] = 48138,
    -- Runetotem's Spaulders of Triumph
    [48148] = 48147,
    -- Runetotem's Robe of Triumph
    [48149] = 48146,
    -- Runetotem's Leggings of Triumph
    [48150] = 48145,
    -- Runetotem's Headpiece of Triumph
    [48151] = 48144,
    -- Runetotem's Handguards of Triumph
    [48152] = 48143,
    -- Malfurion's Gloves of Triumph
    [48163] = 48172,
    -- Malfurion's Cover of Triumph
    [48164] = 48171,
    -- Malfurion's Trousers of Triumph
    [48165] = 48170,
    -- Malfurion's Vestments of Triumph
    [48166] = 48169,
    -- Malfurion's Mantle of Triumph
    [48167] = 48168,
    -- Runetotem's Mantle of Triumph
    [48178] = 48177,
    -- Runetotem's Vestments of Triumph
    [48179] = 48176,
    -- Runetotem's Trousers of Triumph
    [48180] = 48175,
    -- Runetotem's Cover of Triumph
    [48181] = 48174,
    -- Runetotem's Gloves of Triumph
    [48182] = 48173,
    -- Runetotem's Handgrips of Triumph
    [48193] = 48202,
    -- Runetotem's Headguard of Triumph
    [48194] = 48201,
    -- Runetotem's Legguards of Triumph
    [48195] = 48200,
    -- Runetotem's Raiments of Triumph
    [48196] = 48199,
    -- Runetotem's Shoulderpads of Triumph
    [48197] = 48198,
    -- Malfurion's Shoulderpads of Triumph
    [48208] = 48207,
    -- Malfurion's Raiments of Triumph
    [48209] = 48206,
    -- Malfurion's Legguards of Triumph
    [48210] = 48205,
    -- Malfurion's Headguard of Triumph
    [48211] = 48204,
    -- Malfurion's Handgrips of Triumph
    [48212] = 48203,
    -- VanCleef's Breastplate of Triumph
    [48223] = 48232,
    -- VanCleef's Gauntlets of Triumph
    [48224] = 48231,
    -- VanCleef's Helmet of Triumph
    [48225] = 48230,
    -- VanCleef's Legplates of Triumph
    [48226] = 48229,
    -- VanCleef's Pauldrons of Triumph
    [48227] = 48228,
    -- Garona's Pauldrons of Triumph
    [48238] = 48237,
    -- Garona's Legplates of Triumph
    [48239] = 48236,
    -- Garona's Helmet of Triumph
    [48240] = 48235,
    -- Garona's Gauntlets of Triumph
    [48241] = 48234,
    -- Garona's Breastplate of Triumph
    [48242] = 48233,
    -- Windrunner's Tunic of Conquest
    [48275] = 48251,
    -- Windrunner's Handguards of Conquest
    [48276] = 48254,
    -- Windrunner's Headpiece of Conquest
    [48277] = 48250,
    -- Windrunner's Legguards of Conquest
    [48278] = 48252,
    -- Windrunner's Spaulders of Conquest
    [48279] = 48253,
    -- Nobundo's Tunic of Triumph
    [48285] = 48294,
    -- Nobundo's Handguards of Triumph
    [48286] = 48293,
    -- Nobundo's Headpiece of Triumph
    [48287] = 48292,
    -- Nobundo's Legguards of Triumph
    [48288] = 48291,
    -- Nobundo's Spaulders of Triumph
    [48289] = 48290,
    -- Thrall's Tunic of Triumph
    [48300] = 48305,
    -- Thrall's Handguards of Triumph
    [48301] = 48306,
    -- Thrall's Headpiece of Triumph
    [48302] = 48307,
    -- Thrall's Legguards of Triumph
    [48303] = 48308,
    -- Thrall's Spaulders of Triumph
    [48304] = 48309,
    -- Nobundo's Hauberk of Triumph
    [48316] = 48325,
    -- Nobundo's Gloves of Triumph
    [48317] = 48324,
    -- Nobundo's Helm of Triumph
    [48318] = 48323,
    -- Nobundo's Kilt of Triumph
    [48319] = 48322,
    -- Nobundo's Shoulderpads of Triumph
    [48320] = 48321,
    -- Thrall's Shoulderpads of Triumph
    [48331] = 48330,
    -- Thrall's Kilt of Triumph
    [48332] = 48329,
    -- Thrall's Helm of Triumph
    [48333] = 48328,
    -- Thrall's Gloves of Triumph
    [48334] = 48327,
    -- Thrall's Hauberk of Triumph
    [48335] = 48326,
    -- Nobundo's Chestguard of Triumph
    [48346] = 48355,
    -- Nobundo's Grips of Triumph
    [48347] = 48354,
    -- Nobundo's Faceguard of Triumph
    [48348] = 48353,
    -- Nobundo's War-Kilt of Triumph
    [48349] = 48352,
    -- Nobundo's Shoulderguards of Triumph
    [48350] = 48351,
    -- Thrall's Shoulderguards of Triumph
    [48361] = 48360,
    -- Thrall's War-Kilt of Triumph
    [48362] = 48359,
    -- Thrall's Faceguard of Triumph
    [48363] = 48358,
    -- Thrall's Grips of Triumph
    [48364] = 48357,
    -- Thrall's Chestguard of Triumph
    [48365] = 48356,
    -- Wrynn's Battleplate of Triumph
    [48376] = 48385,
    -- Wrynn's Gauntlets of Triumph
    [48377] = 48384,
    -- Wrynn's Helmet of Triumph
    [48378] = 48383,
    -- Wrynn's Legplates of Triumph
    [48379] = 48382,
    -- Wrynn's Shoulderplates of Triumph
    [48380] = 48381,
    -- Hellscream's Battleplate of Triumph
    [48391] = 48396,
    -- Hellscream's Gauntlets of Triumph
    [48392] = 48397,
    -- Hellscream's Helmet of Triumph
    [48393] = 48398,
    -- Hellscream's Legplates of Triumph
    [48394] = 48399,
    -- Hellscream's Shoulderplates of Triumph
    [48395] = 48400,
    -- Wrynn's Greathelm of Triumph
    [48430] = 48433,
    -- Wrynn's Legguards of Triumph
    [48446] = 48447,
    -- Wrynn's Breastplate of Triumph
    [48450] = 48451,
    -- Wrynn's Handguards of Triumph
    [48452] = 48453,
    -- Wrynn's Pauldrons of Triumph
    [48454] = 48455,
    -- Hellscream's Breastplate of Triumph
    [48461] = 48466,
    -- Hellscream's Handguards of Triumph
    [48462] = 48467,
    -- Hellscream's Greathelm of Triumph
    [48463] = 48468,
    -- Hellscream's Legguards of Triumph
    [48464] = 48469,
    -- Hellscream's Pauldrons of Triumph
    [48465] = 48470,
    -- Thassarian's Battleplate of Triumph
    [48481] = 48490,
    -- Thassarian's Gauntlets of Triumph
    [48482] = 48489,
    -- Thassarian's Helmet of Triumph
    [48483] = 48488,
    -- Thassarian's Legplates of Triumph
    [48484] = 48487,
    -- Thassarian's Shoulderplates of Triumph
    [48485] = 48486,
    -- Koltira's Shoulderplates of Triumph
    [48496] = 48495,
    -- Koltira's Legplates of Triumph
    [48497] = 48494,
    -- Koltira's Helmet of Triumph
    [48498] = 48493,
    -- Koltira's Gauntlets of Triumph
    [48499] = 48492,
    -- Koltira's Battleplate of Triumph
    [48500] = 48491,
    -- Thassarian's Chestguard of Triumph
    [48538] = 48547,
    -- Thassarian's Handguards of Triumph
    [48539] = 48546,
    -- Thassarian's Faceguard of Triumph
    [48540] = 48545,
    -- Thassarian's Legguards of Triumph
    [48541] = 48544,
    -- Thassarian's Pauldrons of Triumph
    [48542] = 48543,
    -- Koltira's Pauldrons of Triumph
    [48553] = 48552,
    -- Koltira's Legguards of Triumph
    [48554] = 48551,
    -- Koltira's Faceguard of Triumph
    [48555] = 48550,
    -- Koltira's Handguards of Triumph
    [48556] = 48549,
    -- Koltira's Chestguard of Triumph
    [48557] = 48548,
    -- Turalyon's Tunic of Triumph
    [48575] = 48584,
    -- Turalyon's Gloves of Triumph
    [48576] = 48583,
    -- Turalyon's Headpiece of Triumph
    [48577] = 48582,
    -- Turalyon's Greaves of Triumph
    [48578] = 48581,
    -- Turalyon's Spaulders of Triumph
    [48579] = 48580,
    -- Liadrin's Spaulders of Triumph
    [48590] = 48585,
    -- Liadrin's Greaves of Triumph
    [48591] = 48586,
    -- Liadrin's Headpiece of Triumph
    [48592] = 48587,
    -- Liadrin's Gloves of Triumph
    [48593] = 48588,
    -- Liadrin's Tunic of Triumph
    [48594] = 48589,
    -- Turalyon's Battleplate of Triumph
    [48607] = 48616,
    -- Turalyon's Gauntlets of Triumph
    [48608] = 48615,
    -- Turalyon's Helm of Triumph
    [48609] = 48614,
    -- Turalyon's Legplates of Triumph
    [48610] = 48613,
    -- Turalyon's Shoulderplates of Triumph
    [48611] = 48612,
    -- Liadrin's Shoulderplates of Triumph
    [48622] = 48621,
    -- Liadrin's Legplates of Triumph
    [48623] = 48620,
    -- Liadrin's Helm of Triumph
    [48624] = 48619,
    -- Liadrin's Gauntlets of Triumph
    [48625] = 48618,
    -- Liadrin's Battleplate of Triumph
    [48626] = 48617,
    -- Turalyon's Shoulderguards of Triumph
    [48637] = 48646,
    -- Turalyon's Legguards of Triumph
    [48638] = 48645,
    -- Turalyon's Faceguard of Triumph
    [48639] = 48644,
    -- Turalyon's Handguards of Triumph
    [48640] = 48643,
    -- Turalyon's Breastplate of Triumph
    [48641] = 48642,
    -- Liadrin's Breastplate of Triumph
    [48657] = 48651,
    -- Liadrin's Handguards of Triumph
    [48658] = 48650,
    -- Liadrin's Faceguard of Triumph
    [48659] = 48649,
    -- Liadrin's Legguards of Triumph
    [48660] = 48648,
    -- Liadrin's Shoulderguards of Triumph
    [48661] = 48647,
    -- Windrunner's Handguards 
    [48814] = 48819,
    -- Windrunner's Headpiece 
    [48815] = 48820,
    -- Windrunner's Legguards 
    [48816] = 48821,
    -- Windrunner's Spaulders 
    [48817] = 48822,
    -- Windrunner's Tunic 
    [48818] = 48823,
    -- Boots of the Grieving Soul
    [49231] = 49234,
    -- Sandals of the Grieving Soul
    [49232] = 49233,
    -- Boots of Tortured Space
    [49235] = 49238,
    -- Sabatons of Tortured Space
    [49236] = 49237,
    -- Magic Rooster Egg
    [49290] = 46778,
    -- Sparkling Onyxia Tooth Pendant
    [49485] = 49314,
    -- Polished Dragonslayer's Signet
    [49486] = 49313,
    -- Purified Onyxia Blood Talisman
    [49487] = 49312,
    -- Cryptmaker
    [49919] = 50603,
    -- Band of the Bone Colossus
    [49949] = 50604,
    -- Frostbitten Fur Boots
    [49950] = 50607,
    -- Gendarme's Cuirass
    [49951] = 50606,
    -- Snowserpent Mail Helm
    [49952] = 50605,
    -- Bracers of Dark Reckoning
    [49960] = 50611,
    -- Legguards of Lost Hope
    [49964] = 50612,
    -- Marrowgar's Frigid Eye
    [49967] = 50610,
    -- Frozen Bonespike
    [49968] = 50608,
    -- Bone Sentinel's Amulet
    [49975] = 50609,
    -- Bulwark of Smouldering Steel
    [49976] = 50616,
    -- Loop of the Endless Labyrinth
    [49977] = 50614,
    -- Crushing Coldwraith Belt
    [49978] = 50613,
    -- Handguards of Winter's Respite
    [49979] = 50615,
    -- Rusted Bonespike Pauldrons
    [49980] = 50617,
    -- Fal'inrush, Defender of Quel'thalas
    [49981] = 50733,
    -- Heartpierce
    [49982] = 50641,
    -- Blood-Soaked Saronite Stompers
    [49983] = 50639,
    -- Juggernaut Band
    [49985] = 50642,
    -- Broken Ram Skull Helm
    [49986] = 50640,
    -- Cultist's Bloodsoaked Spaulders
    [49987] = 50646,
    -- Leggings of Northern Lights
    [49988] = 50645,
    -- Ahn'kahar Onyx Neckguard
    [49989] = 50647,
    -- Ring of Maddening Whispers
    [49990] = 50644,
    -- Shoulders of Mercy Killing
    [49991] = 50643,
    -- Nibelung
    [49992] = 50648,
    -- Necrophotic Greaves
    [49993] = 50652,
    -- The Lady's Brittle Bracers
    [49994] = 50651,
    -- Fallen Lord's Handguards
    [49995] = 50650,
    -- Deathwhisper Raiment
    [49996] = 50649,
    -- Mithrios, Bronzebeard's Legacy
    [49997] = 50738,
    -- Shadowvault Slayer's Cloak
    [49998] = 50653,
    -- Skeleton Lord's Circle
    [49999] = 50657,
    -- Scourge Hunter's Vambraces
    [50000] = 50655,
    -- Ikfirus's Sack of Wonder
    [50001] = 50656,
    -- Ikfirus' Sack of Wonder
    [50001] = 50656,
    -- Polar Bear Claw Bracers
    [50002] = 50659,
    -- Boneguard Commander's Pauldrons
    [50003] = 50660,
    -- Amulet of the Silent Eulogy
    [50005] = 50658,
    -- Corp'rethar Ceremonial Crown
    [50006] = 50661,
    -- Ring of Rapid Ascent
    [50008] = 50664,
    -- Boots of Unnatural Growth
    [50009] = 50665,
    -- Waistband of Righteous Fury
    [50010] = 50667,
    -- Gunship Captain's Mittens
    [50011] = 50663,
    -- Havoc's Call, Blade of Lordaeron Kings
    [50012] = 50737,
    -- Greatcloak of the Turned Champion
    [50014] = 50668,
    -- Belt of the Blood Nova
    [50015] = 50671,
    -- Rib Spreader
    [50016] = 50676,
    -- Winding Sheet
    [50019] = 50677,
    -- Raging Behemoth's Shoulderplates
    [50020] = 50674,
    -- Aldriana's Gloves of Secrecy
    [50021] = 50675,
    -- Dual-Bladed Pauldrons
    [50022] = 50673,
    -- Bile-Encrusted Medallion
    [50023] = 50682,
    -- Blightborne Warplate
    [50024] = 50681,
    -- Seal of Many Mouths
    [50025] = 50678,
    -- Helm of the Elder Moon
    [50026] = 50679,
    -- Rot-Resistant Breastplate
    [50027] = 50680,
    -- Trauma
    [50028] = 50685,
    -- Bloodsunder's Bracers
    [50030] = 50687,
    -- Death Surgeon's Sleeves
    [50032] = 50686,
    -- Corpse-Impaling Spike
    [50033] = 50684,
    -- Zod's Repeating Longbow
    [50034] = 50638,
    -- Black Bruise
    [50035] = 50692,
    -- Fleshrending Gauntlets
    [50037] = 50690,
    -- Carapace of Forgotten Kings
    [50038] = 50689,
    -- Distant Land
    [50040] = 50695,
    -- Leather of Stitched Scourge Parts
    [50041] = 50696,
    -- Gangrenous Leggings
    [50042] = 50697,
    -- Plaguebringer's Stained Pants
    [50056] = 50694,
    -- Horrific Flesh Epaulets
    [50059] = 50698,
    -- Faceplate of the Forgotten
    [50060] = 50701,
    -- Holiday's Grace
    [50061] = 50700,
    -- Plague Scientist's Boots
    [50062] = 50699,
    -- Lingering Illness
    [50063] = 50702,
    -- Unclean Surgical Gloves
    [50064] = 50703,
    -- Icecrown Glacial Wall
    [50065] = 50729,
    -- Astrylian's Sutured Cinch
    [50067] = 50707,
    -- Rigormortis
    [50068] = 50704,
    -- Professor's Bloodied Smock
    [50069] = 50705,
    -- Treads of the Wasteland
    [50071] = 50711,
    -- Landsoul's Horned Greathelm
    [50072] = 50712,
    -- Geistlord's Punishment Sack
    [50073] = 50713,
    -- Royal Crimson Cloak
    [50074] = 50718,
    -- Taldaram's Plated Fists
    [50075] = 50716,
    -- Shadowblade Breastplate
    [50087] = 51743,
    -- Shadowblade Gauntlets
    [50088] = 51742,
    -- Shadowblade Helmet
    [50089] = 51745,
    -- Shadowblade Legplates
    [50090] = 51744,
    -- Scourgelord Battleplate
    [50094] = 51686,
    -- Scourgelord Gauntlets
    [50095] = 51685,
    -- Scourgelord Helmet
    [50096] = 51684,
    -- Scourgelord Legplates
    [50097] = 51683,
    -- Scourgelord Shoulderplates
    [50098] = 51682,
    -- Shadowblade Pauldrons
    [50105] = 51746,
    -- Lasherweave Robes
    [50106] = 51696,
    -- Lasherweave Gauntlets
    [50107] = 51695,
    -- Lasherweave Helmet
    [50108] = 51694,
    -- Lasherweave Legplates
    [50109] = 51693,
    -- Lasherweave Pauldrons
    [50113] = 51692,
    -- Ahn'Kahar Blood Hunter's Handguards
    [50114] = 51711,
    -- Ahn'Kahar Blood Hunter's Headpiece
    [50115] = 51710,
    -- Ahn'Kahar Blood Hunter's Legguards
    [50116] = 51709,
    -- Ahn'Kahar Blood Hunter's Spaulders
    [50117] = 51708,
    -- Ahn'Kahar Blood Hunter's Tunic
    [50118] = 51707,
    -- Valanar's Other Signet Ring
    [50170] = 50714,
    -- Shoulders of Frost-Tipped Thorns
    [50171] = 50715,
    -- Sanguine Silk Robes
    [50172] = 50717,
    -- Shadow Silk Spindle
    [50173] = 50719,
    -- Incarnadine Band of Mending
    [50174] = 50720,
    -- Crypt Keeper's Bracers
    [50175] = 50721,
    -- San'layn Ritualist Gloves
    [50176] = 50722,
    -- Mail of Crimson Coins
    [50177] = 50723,
    -- Bloodfall
    [50178] = 50727,
    -- Last Word
    [50179] = 50708,
    -- Lana'thel's Chain of Flagellation
    [50180] = 50728,
    -- Dying Light
    [50181] = 50725,
    -- Blood Queen's Crimson Choker
    [50182] = 50724,
    -- Lungbreaker
    [50183] = 50621,
    -- Keleseth's Seducer
    [50184] = 50710,
    -- Devium's Eternally Cold Ring
    [50185] = 50622,
    -- Frostbrood Sapphire Ring
    [50186] = 50618,
    -- Coldwraith Links
    [50187] = 50620,
    -- Anub'ar Stalker's Gloves
    [50188] = 50619,
    -- Scourge Reaver's Legplates
    [50192] = 50624,
    -- Noose of Malachite
    [50195] = 50627,
    -- Leggings of Dying Candles
    [50199] = 50623,
    -- Snowstorm Helm
    [50202] = 50626,
    -- Frostbinder's Shredded Cape
    [50205] = 50628,
    -- Dark Coven Gloves
    [50240] = 51766,
    -- Dark Coven Hood
    [50241] = 51765,
    -- Dark Coven Leggings
    [50242] = 51764,
    -- Dark Coven Robe
    [50243] = 51763,
    -- Dark Coven Shoulderpads
    [50244] = 51762,
    -- Bloodmage Gloves
    [50275] = 51716,
    -- Bloodmage Hood
    [50276] = 51715,
    -- Bloodmage Leggings
    [50277] = 51714,
    -- Bloodmage Robe
    [50278] = 51713,
    -- Bloodmage Shoulderpads
    [50279] = 51712,
    -- Lightsworn Shoulderplates
    [50324] = 51721,
    -- Lightsworn Legplates
    [50325] = 51720,
    -- Lightsworn Helmet
    [50326] = 51719,
    -- Lightsworn Gauntlets
    [50327] = 51718,
    -- Lightsworn Battleplate
    [50328] = 51717,
    -- Toskk's Maximized Wristguards
    [50333] = 50670,
    -- Sliver of Pure Ice
    [50339] = 50346,
    -- Muradin's Spyglass
    [50340] = 50345,
    -- Unidentifiable Organ
    [50341] = 50344,
    -- Whispering Fanged Skull
    [50342] = 50343,
    -- Tiny Abomination in a Jar
    [50351] = 50706,
    -- Corpse Tongue Coin
    [50352] = 50349,
    -- Dislodged Foreign Object
    [50353] = 50348,
    -- Bauble of True Blood
    [50354] = 50726,
    -- Maghia's Misguided Quill
    [50357] = 49686,
    -- Althor's Abacus
    [50359] = 50366,
    -- Phylactery of the Nameless Lich
    [50360] = 50365,
    -- Sindragosa's Flawless Fang
    [50361] = 50364,
    -- Deathbringer's Will
    [50362] = 50363,
    -- Battered Hilt
    [50380] = 50379,
    -- Crimson Acolyte Handwraps
    [50391] = 51738,
    -- Crimson Acolyte Cowl
    [50392] = 51737,
    -- Crimson Acolyte Pants
    [50393] = 51741,
    -- Crimson Acolyte Raiments
    [50394] = 51740,
    -- Crimson Acolyte Mantle
    [50396] = 51739,
    -- Scourgeborne Waraxe
    [50411] = 50654,
    -- Bloodvenom Blade
    [50412] = 50672,
    -- Nerub'ar Stalker's Cord
    [50413] = 50688,
    -- Might of Blight
    [50414] = 50693,
    -- Bryntroll, the Bone Arbiter
    [50415] = 50709,
    -- Boots of the Funeral March
    [50416] = 50632,
    -- Bracers of Eternal Dreaming
    [50417] = 50630,
    -- Robe of the Waking Nightmare
    [50418] = 50629,
    -- Sindragosa's Cruel Claw
    [50421] = 50633,
    -- Sundial of Eternal Dusk
    [50423] = 50635,
    -- Memory of Malygos
    [50424] = 50636,
    -- Oathbinder, Charge of the Ranger-General
    [50425] = 50735,
    -- Heaven's Fall, Kryss of a Thousand Lies
    [50426] = 50736,
    -- Bloodsurge, Kel'Thuzad's Blade of Agony
    [50427] = 50732,
    -- Royal Scepter of Terenas II
    [50428] = 50734,
    -- Archus, Greatstaff of Antonidas
    [50429] = 50731,
    -- Nightmare Ender
    [50472] = 50631,
    -- Bone Warden's Splitter
    [50759] = 51938,
    -- Bonebreaker Scepter
    [50760] = 51937,
    -- Citadel Enforcer's Claymore
    [50761] = 51936,
    -- Linked Scourge Vertebrae
    [50762] = 51935,
    -- Marrowgar's Scratching Choker
    [50763] = 51934,
    -- Shawl of Nerubian Silk
    [50764] = 51933,
    -- Crimson Acolyte Hood
    [50765] = 51736,
    -- Crimson Acolyte Gloves
    [50766] = 51735,
    -- Crimson Acolyte Shoulderpads
    [50767] = 51734,
    -- Crimson Acolyte Robe
    [50768] = 51733,
    -- Crimson Acolyte Leggings
    [50769] = 51732,
    -- Frost Needle
    [50771] = 51932,
    -- Ancient Skeletal Boots
    [50772] = 51931,
    -- Cord of the Patronizing Practitioner
    [50773] = 51930,
    -- Coldwraith Bracers
    [50774] = 51929,
    -- Corrupted Silverplate Leggings
    [50775] = 51928,
    -- Njorndar Bone Bow
    [50776] = 51927,
    -- Handgrips of Frost and Sleet
    [50777] = 51926,
    -- Soulthief's Braided Belt
    [50778] = 51925,
    -- Deathspeaker Zealot's Helm
    [50779] = 51924,
    -- Chestguard of the Frigid Noose
    [50780] = 51923,
    -- Scourgelord's Baton
    [50781] = 51922,
    -- Sister's Handshrouds
    [50782] = 51921,
    -- Boots of the Frozen Seed
    [50783] = 51920,
    -- Deathspeaker Disciple's Belt
    [50784] = 51919,
    -- Bracers of Dark Blessings
    [50785] = 51918,
    -- Ghoul Commander's Cuirass
    [50786] = 51917,
    -- Frost Giant's Cleaver
    [50787] = 51916,
    -- Bone Drake's Enameled Boots
    [50788] = 51915,
    -- Icecrown Rampart Bracers
    [50789] = 51914,
    -- Abomination's Bloody Ring
    [50790] = 51913,
    -- Saronite Gargoyle Cloak
    [50791] = 51912,
    -- Pauldrons of Lost Hope
    [50792] = 51911,
    -- Midnight Sun
    [50793] = 51910,
    -- Neverending Winter
    [50794] = 51909,
    -- Cord of Dark Suffering
    [50795] = 51908,
    -- Bracers of Pale Illumination
    [50796] = 51907,
    -- Ice-Reinforced Vrykul Helm
    [50797] = 51906,
    -- Ramaladni's Blade of Culling
    [50798] = 51905,
    -- Scourge Stranglers
    [50799] = 51904,
    -- Hauberk of a Thousand Cuts
    [50800] = 51903,
    -- Blade-Scored Carapace
    [50801] = 51902,
    -- Gargoyle Spit Bracers
    [50802] = 51901,
    -- Saurfang's Cold-Forged Band
    [50803] = 51900,
    -- Icecrown Spire Sandals
    [50804] = 51899,
    -- Mag'hari Chieftain's Staff
    [50805] = 51898,
    -- Leggings of Unrelenting Blood
    [50806] = 51897,
    -- Thaumaturge's Crackling Cowl
    [50807] = 51896,
    -- Deathforged Legplates
    [50808] = 51895,
    -- Soulcleave Pendant
    [50809] = 51894,
    -- Gutbuster
    [50810] = 51893,
    -- Festering Fingerguards
    [50811] = 51892,
    -- Taldron's Long Neglected Boots
    [50812] = 51891,
    -- Lasherweave Mantle
    [50819] = 51706,
    -- Lasherweave Trousers
    [50820] = 51705,
    -- Lasherweave Cover
    [50821] = 51704,
    -- Lasherweave Gloves
    [50822] = 51703,
    -- Lasherweave Vestment
    [50823] = 51702,
    -- Lasherweave Shoulderpads
    [50824] = 51701,
    -- Lasherweave Legguards
    [50825] = 51700,
    -- Lasherweave Headguard
    [50826] = 51699,
    -- Lasherweave Handgrips
    [50827] = 51698,
    -- Lasherweave Raiment
    [50828] = 51697,
    -- Frost Witch's Chestguard
    [50830] = 51752,
    -- Frost Witch's Grips
    [50831] = 51753,
    -- Frost Witch's Faceguard
    [50832] = 51754,
    -- Frost Witch's War-Kilt
    [50833] = 51755,
    -- Frost Witch's Shoulderguards
    [50834] = 51756,
    -- Frost Witch's Tunic
    [50835] = 51747,
    -- Frost Witch's Handguards
    [50836] = 51748,
    -- Frost Witch's Headpiece
    [50837] = 51749,
    -- Frost Witch's Legguards
    [50838] = 51750,
    -- Frost Witch's Spaulders
    [50839] = 51751,
    -- Frost Witch's Hauberk
    [50841] = 51757,
    -- Frost Witch's Gloves
    [50842] = 51758,
    -- Frost Witch's Helm
    [50843] = 51759,
    -- Frost Witch's Kilt
    [50844] = 51760,
    -- Frost Witch's Shoulderpads
    [50845] = 51761,
    -- Ymirjar Lord's Pauldrons
    [50846] = 51776,
    -- Ymirjar Lord's Legguards
    [50847] = 51775,
    -- Ymirjar Lord's Greathelm
    [50848] = 51774,
    -- Ymirjar Lord's Handguards
    [50849] = 51773,
    -- Ymirjar Lord's Breastplate
    [50850] = 51772,
    -- Precious's Putrid Collar
    [50852] = 51890,
    -- Precious' Putrid Collar
    [50852] = 51890,
    -- Scourgelord Pauldrons
    [50853] = 51691,
    -- Scourgelord Legguards
    [50854] = 51690,
    -- Scourgelord Faceguard
    [50855] = 51689,
    -- Scourgelord Handguards
    [50856] = 51688,
    -- Scourgelord Chestguard
    [50857] = 51687,
    -- Plague-Soaked Leather Leggings
    [50858] = 51889,
    -- Cloak of Many Skins
    [50859] = 51888,
    -- Lightsworn Shoulderguards
    [50860] = 51731,
    -- Lightsworn Legguards
    [50861] = 51730,
    -- Lightsworn Faceguard
    [50862] = 51729,
    -- Lightsworn Handguards
    [50863] = 51728,
    -- Lightsworn Chestguard
    [50864] = 51727,
    -- Lightsworn Spaulders
    [50865] = 51726,
    -- Lightsworn Greaves
    [50866] = 51725,
    -- Lightsworn Headpiece
    [50867] = 51724,
    -- Lightsworn Gloves
    [50868] = 51723,
    -- Lightsworn Tunic
    [50869] = 51722,
    -- Abracadaver
    [50966] = 51887,
    -- Festergut's Gaseous Gloves
    [50967] = 51886,
    -- Wrists of Septic Shock
    [50985] = 51885,
    -- Signet of Putrefaction
    [50986] = 51884,
    -- Bloodstained Surgeon's Shoulderguards
    [50988] = 51883,
    -- Kilt of Untreated Wounds
    [50990] = 51882,
    -- Shaft of Glacial Ice
    [50998] = 51881,
    -- Gluth's Fetching Knife
    [50999] = 51880,
    -- Flesh-Shaper's Gurney Strap
    [51000] = 51879,
    -- Rotface's Rupturing Ring
    [51001] = 51878,
    -- Taldron's Short-Sighted Helm
    [51002] = 51877,
    -- Abomination Knuckles
    [51003] = 51876,
    -- Lockjaw
    [51004] = 51875,
    -- Gloves of Broken Fingers
    [51005] = 51874,
    -- Shuffling Shoes
    [51006] = 51873,
    -- Ether-Soaked Bracers
    [51007] = 51872,
    -- Choker of Filthy Diamonds
    [51008] = 51871,
    -- Chestguard of the Failed Experiment
    [51009] = 51870,
    -- The Facelifter
    [51010] = 51869,
    -- Flesh-Carving Scalpel
    [51011] = 51868,
    -- Infected Choker
    [51012] = 51867,
    -- Discarded Bag of Entrails
    [51013] = 51866,
    -- Scalpel-Sharpening Shoulderguards
    [51014] = 51865,
    -- Shoulderpads of the Morbid Ritual
    [51015] = 51864,
    -- Pendant of Split Veins
    [51016] = 51863,
    -- Cauterized Cord
    [51017] = 51862,
    -- Chestplate of Septic Stitches
    [51018] = 51861,
    -- Rippling Flesh Kilt
    [51019] = 51860,
    -- Shoulders of Ruinous Senility
    [51020] = 51859,
    -- Soulbreaker
    [51021] = 51858,
    -- Hersir's Greatspear
    [51022] = 51857,
    -- Taldaram's Soft Slippers
    [51023] = 51856,
    -- Thrice Fanged Signet
    [51024] = 51855,
    -- Battle-Maiden's Legguards
    [51025] = 51854,
    -- Sanctified Scourgelord Shoulderplates
    [51125] = 51314,
    -- Sanctified Scourgelord Legplates
    [51126] = 51313,
    -- Sanctified Scourgelord Helmet
    [51127] = 51312,
    -- Sanctified Scourgelord Gauntlets
    [51128] = 51311,
    -- Sanctified Scourgelord Battleplate
    [51129] = 51310,
    -- Sanctified Scourgelord Pauldrons
    [51130] = 51309,
    -- Sanctified Scourgelord Legguards
    [51131] = 51308,
    -- Sanctified Scourgelord Handguards
    [51132] = 51307,
    -- Sanctified Scourgelord Faceguard
    [51133] = 51306,
    -- Sanctified Scourgelord Chestguard
    [51134] = 51305,
    -- Sanctified Lasherweave Pauldrons
    [51135] = 51304,
    -- Sanctified Lasherweave Legplates
    [51136] = 51303,
    -- Sanctified Lasherweave Helmet
    [51137] = 51302,
    -- Sanctified Lasherweave Gauntlets
    [51138] = 51301,
    -- Sanctified Lasherweave Robes
    [51139] = 51300,
    -- Sanctified Lasherweave Shoulderpads
    [51140] = 51299,
    -- Sanctified Lasherweave Raiment
    [51141] = 51298,
    -- Sanctified Lasherweave Legguards
    [51142] = 51297,
    -- Sanctified Lasherweave Headguard
    [51143] = 51296,
    -- Sanctified Lasherweave Handgrips
    [51144] = 51295,
    -- Sanctified Lasherweave Vestment
    [51145] = 51294,
    -- Sanctified Lasherweave Trousers
    [51146] = 51293,
    -- Sanctified Lasherweave Mantle
    [51147] = 51292,
    -- Sanctified Lasherweave Gloves
    [51148] = 51291,
    -- Sanctified Lasherweave Cover
    [51149] = 51290,
    -- Sanctified Ahn'Kahar Blood Hunter's Tunic
    [51150] = 51289,
    -- Sanctified Ahn'Kahar Blood Hunter's Spaulders
    [51151] = 51288,
    -- Sanctified Ahn'Kahar Blood Hunter's Legguards
    [51152] = 51287,
    -- Sanctified Ahn'Kahar Blood Hunter's Headpiece
    [51153] = 51286,
    -- Sanctified Ahn'Kahar Blood Hunter's Handguards
    [51154] = 51285,
    -- Sanctified Bloodmage Shoulderpads
    [51155] = 51284,
    -- Sanctified Bloodmage Robe
    [51156] = 51283,
    -- Sanctified Bloodmage Leggings
    [51157] = 51282,
    -- Sanctified Bloodmage Hood
    [51158] = 51281,
    -- Sanctified Bloodmage Gloves
    [51159] = 51280,
    -- Sanctified Crimson Acolyte Shoulderpads
    [51175] = 51264,
    -- Sanctified Crimson Acolyte Robe
    [51176] = 51263,
    -- Sanctified Crimson Acolyte Leggings
    [51177] = 51262,
    -- Sanctified Crimson Acolyte Hood
    [51178] = 51261,
    -- Sanctified Crimson Acolyte Gloves
    [51179] = 51260,
    -- Sanctified Crimson Acolyte Raiments
    [51180] = 51259,
    -- Sanctified Crimson Acolyte Pants
    [51181] = 51258,
    -- Sanctified Crimson Acolyte Mantle
    [51182] = 51257,
    -- Sanctified Crimson Acolyte Handwraps
    [51183] = 51256,
    -- Sanctified Crimson Acolyte Cowl
    [51184] = 51255,
    -- Sanctified Shadowblade Pauldrons
    [51185] = 51254,
    -- Sanctified Shadowblade Legplates
    [51186] = 51253,
    -- Sanctified Shadowblade Helmet
    [51187] = 51252,
    -- Sanctified Shadowblade Gauntlets
    [51188] = 51251,
    -- Sanctified Shadowblade Breastplate
    [51189] = 51250,
    -- Sanctified Frost Witch's Tunic
    [51190] = 51249,
    -- Sanctified Frost Witch's Handguards
    [51191] = 51248,
    -- Sanctified Frost Witch's Headpiece
    [51192] = 51247,
    -- Sanctified Frost Witch's Legguards
    [51193] = 51246,
    -- Sanctified Frost Witch's Spaulders
    [51194] = 51245,
    -- Sanctified Frost Witch's Chestguard
    [51195] = 51244,
    -- Sanctified Frost Witch's Grips
    [51196] = 51243,
    -- Sanctified Frost Witch's Faceguard
    [51197] = 51242,
    -- Sanctified Frost Witch's War-Kilt
    [51198] = 51241,
    -- Sanctified Frost Witch's Shoulderguards
    [51199] = 51240,
    -- Sanctified Frost Witch's Hauberk
    [51200] = 51239,
    -- Sanctified Frost Witch's Gloves
    [51201] = 51238,
    -- Sanctified Frost Witch's Helm
    [51202] = 51237,
    -- Sanctified Frost Witch's Kilt
    [51203] = 51236,
    -- Sanctified Frost Witch's Shoulderpads
    [51204] = 51235,
    -- Sanctified Dark Coven Shoulderpads
    [51205] = 51234,
    -- Sanctified Dark Coven Robe
    [51206] = 51233,
    -- Sanctified Dark Coven Leggings
    [51207] = 51232,
    -- Sanctified Dark Coven Hood
    [51208] = 51231,
    -- Sanctified Dark Coven Gloves
    [51209] = 51230,
    -- Sanctified Ymirjar Lord's Shoulderplates
    [51210] = 51229,
    -- Sanctified Ymirjar Lord's Legplates
    [51211] = 51228,
    -- Sanctified Ymirjar Lord's Helmet
    [51212] = 51227,
    -- Sanctified Ymirjar Lord's Gauntlets
    [51213] = 51226,
    -- Sanctified Ymirjar Lord's Battleplate
    [51214] = 51225,
    -- Sanctified Ymirjar Lord's Pauldrons
    [51215] = 51224,
    -- Sanctified Ymirjar Lord's Legguards
    [51216] = 51223,
    -- Sanctified Ymirjar Lord's Handguards
    [51217] = 51222,
    -- Sanctified Ymirjar Lord's Greathelm
    [51218] = 51221,
    -- Sanctified Ymirjar Lord's Breastplate
    [51219] = 51220,
    -- Sanctified Lightsworn Chestguard
    [51265] = 51174,
    -- Sanctified Lightsworn Faceguard
    [51266] = 51173,
    -- Sanctified Lightsworn Handguards
    [51267] = 51172,
    -- Sanctified Lightsworn Legguards
    [51268] = 51171,
    -- Sanctified Lightsworn Shoulderguards
    [51269] = 51170,
    -- Sanctified Lightsworn Gloves
    [51270] = 51169,
    -- Sanctified Lightsworn Greaves
    [51271] = 51168,
    -- Sanctified Lightsworn Headpiece
    [51272] = 51167,
    -- Sanctified Lightsworn Spaulders
    [51273] = 51166,
    -- Sanctified Lightsworn Tunic
    [51274] = 51165,
    -- Sanctified Lightsworn Battleplate
    [51275] = 51164,
    -- Sanctified Lightsworn Gauntlets
    [51276] = 51163,
    -- Sanctified Lightsworn Helmet
    [51277] = 51162,
    -- Sanctified Lightsworn Legplates
    [51278] = 51161,
    -- Sanctified Lightsworn Shoulderplates
    [51279] = 51160,
    -- Blood-Drinker's Girdle
    [51325] = 51853,
    -- Wand of Ruby Claret
    [51326] = 51852,
    -- Bloodsoul Raiment
    [51379] = 51851,
    -- Pale Corpse Boots
    [51380] = 51850,
    -- Cerise Coiled Ring
    [51381] = 51849,
    -- Heartsick Mender's Cape
    [51382] = 51848,
    -- Spaulders of the Blood Princes
    [51383] = 51847,
    -- Bloodsipper
    [51384] = 51846,
    -- Stakethrower
    [51385] = 51845,
    -- Throatrender Handguards
    [51386] = 51844,
    -- Seal of the Twilight Queen
    [51387] = 51843,
    -- Collar of Haughty Disdain
    [51548] = 51842,
    -- Ivory-Inlaid Leggings
    [51550] = 51841,
    -- Chestguard of Siphoned Elements
    [51551] = 51840,
    -- Shoulderpads of the Searing Kiss
    [51552] = 51839,
    -- Lana'thel's Bloody Nail
    [51553] = 51838,
    -- Cowl of Malefic Repose
    [51554] = 51837,
    -- Tightening Waistband
    [51555] = 51836,
    -- Veincrusher Gauntlets
    [51556] = 51835,
    -- Dreamhunter's Carbine
    [51561] = 51834,
    -- Oxheart
    [51562] = 51833,
    -- Taiga Bindings
    [51563] = 51832,
    -- Ironrope Belt of Ymirjar
    [51564] = 51831,
    -- Skinned Whelp Shoulders
    [51565] = 51830,
    -- Legguards of the Twisted Dream
    [51566] = 51829,
    -- Sister Svalna's Aether Staff
    [51582] = 51828,
    -- Stormbringer Gloves
    [51583] = 51827,
    -- Lich Wrappings
    [51584] = 51826,
    -- Sister Svalna's Spangenhelm
    [51585] = 51825,
    -- Emerald Saint's Spaulders
    [51586] = 51824,
    -- Leggings of the Refracted Mind
    [51777] = 51823,
    -- Rimetooth Pendant
    [51779] = 51822,
    -- Etched Dragonbone Girdle
    [51782] = 51821,
    -- Vambraces of the Frost Wyrm Queen
    [51783] = 51820,
    -- Splintershard
    [51784] = 51819,
    -- Wyrmwing Treads
    [51785] = 51818,
    -- Legplates of Aetheric Strife
    [51786] = 51817,
    -- Scourge Fanged Stompers
    [51787] = 51816,
    -- Bleak Coldarra Carver
    [51788] = 51815,
    -- Icicle Shapers
    [51789] = 51814,
    -- Robes of Azure Downfall
    [51790] = 51813,
    -- Lost Pavise of the Blue Flight
    [51791] = 51812,
    -- Shoulderguards of Crystalline Bone
    [51792] = 51811,
    -- Troggbane, Axe of the Frostborne King
    [51795] = 51947,
    -- Warmace of Menethil
    [51796] = 51946,
    -- Tainted Twig of Nordrassil
    [51797] = 51945,
    -- Valius, Gavel of the Lightbringer
    [51798] = 51944,
    -- Halion, Staff of Forgotten Love
    [51799] = 51943,
    -- Stormfury, Black Blade of the Betrayer
    [51800] = 51942,
    -- Pugius, Fist of Defiance
    [51801] = 51941,
    -- Windrunner's Heartseeker
    [51802] = 51940,
    -- Tel'thas, Dagger of the Blood King
    [51803] = 51939,
    -- Vanquisher's Mark of Sanctification
    [52025] = 52028,
    -- Protector's Mark of Sanctification
    [52026] = 52029,
    -- Conqueror's Mark of Sanctification
    [52027] = 52030,
    -- Jaina's Locket
    [52251] = 51318,
    -- Abduction's Cover
    [54556] = 53115,
    -- Baltharus' Gift
    [54557] = 53103,
    -- Boots of Divided Being
    [54558] = 53119,
    -- Bracers of the Heir
    [54559] = 53112,
    -- Changeling Gloves
    [54560] = 53117,
    -- Gloaming Sark
    [54561] = 53114,
    -- Misbegotten Belt
    [54562] = 53118,
    -- Saviana's Tribute
    [54563] = 53116,
    -- Scion's Treads
    [54564] = 53111,
    -- Surrogate Belt
    [54565] = 53121,
    -- Twilight Scale Shoulders
    [54566] = 53113,
    -- Zarithrian's Offering
    [54567] = 53110,
    -- Signet of Twilight
    [54576] = 53133,
    -- Returning Footfalls
    [54577] = 53127,
    -- Apocalypse's Advance
    [54578] = 53125,
    -- Treads of Impending Resurrection
    [54579] = 53129,
    -- Umbrage Armbands
    [54580] = 53126,
    -- Penumbra Pendant
    [54581] = 53132,
    -- Bracers of Fiery Night
    [54582] = 53486,
    -- Cloak of Burning Dusk
    [54583] = 53489,
    -- Phaseshifter's Bracers
    [54584] = 53134,
    -- Ring of Phased Regeneration
    [54585] = 53490,
    -- Foreshadow Steps
    [54586] = 53487,
    -- Split Shape Belt
    [54587] = 53488,
    -- Charred Twilight Scale
    [54588] = 54572,
    -- Glowing Twilight Scale
    [54589] = 54573,
    -- Sharpened Twilight Scale
    [54590] = 54569,
    -- Petrified Twilight Scale
    [54591] = 54571,
    -- Timeless Tanzanite
    [30552] = {30555, 30583, },
    -- Regal Chrysoprase
    [30563] = {30590, 30594, },
    -- Jagged Chrysoprase
    [30602] = {30548, 30565, },
    -- Delicate Crimson Spinel
    [32194] = {32197, 35487, },
    -- Design: Brilliant Crimson Spinel
    [32281] = {32282, 32290, },
    -- Reins of the Swift Spectral Tiger
    [33225] = {49284, },
    -- Frostmourne
    [33475] = {36942, },
    -- Design: Reckless Pyrestone
    [35762] = {35767, 32305, },
    -- Purified Shadowsong Amethyst
    [37503] = {32216, 32225, },
    -- Greater Inscription of the Axe
    [44133] = {50335, 44871, },
    -- Greater Inscription of the Crag
    [44134] = {50336, 44872, },
    -- Greater Inscription of the Storm 
    [44135] = {50338, 44874, },
    -- Greater Inscription of the Pinnacle
    [44136] = {50337, 44873, },
    -- Head of Onyxia
    [49644] = {49643, },
    -- Belt of Broken Bones
    [50036] = {50691, },
    -- Glorenzelg, High-Blade of the Silver Hand
    [50070] = {50730, },
    -- Ymirjar Lord's Battleplate
    [50078] = {51771, },
    -- Ymirjar Lord's Gauntlets
    [50079] = {51770, },
    -- Ymirjar Lord's Helmet
    [50080] = {51769, },
    -- Ymirjar Lord's Legplates
    [50081] = {51768, },
    -- Ymirjar Lord's Shoulderplates
    [50082] = {51767, },
    -- Grinning Skull Greatboots
    [50190] = {50625, },
    -- Shroud of Winter's Chill
    [35494] = {54804, },
    -- The Frost Lord's War Cloak
    [35495] = {54802, },
    -- Icebound Cloak
    [35496] = {54801, },
    -- Cloak of the Frigid Winds
    [35497] = {54805, },
    -- Frostscythe of Lord Ahune
    [35514] = {54806, },
    -- Medallion of the Alliance
    [37864] = {42123, 42124, 51377, },
    -- Medallion of the Horde
    [37865] = {42122, 42126, 51378, },
    -- Glinting Dreadstone
    [40131] = {40137, 40148, 40157, },
    -- Darkmoon Card: Greatness
    [42987] = {44253, 44254, 44255, },
    -- Arcanum of the Savage Gladiator
    [44701] = {50373, 50372, 44702, },
    -- Windrunner's Spaulders of Triumph
    [48270] = {48269, 48259, 48260, },
    -- Windrunner's Legguards of Triumph
    [48271] = {48268, 48258, 48261, },
    -- Windrunner's Headpiece of Triumph
    [48272] = {48267, 48257, 48262, },
    -- Windrunner's Handguards of Triumph
    [48273] = {48266, 48256, 48263, },
    -- Windrunner's Tunic of Triumph
    [48274] = {48265, 48255, 48264, },
    -- Purified Tanzanite
    [30572] = {30586, 30589, 30600, 30603, },
    -- Brilliant Crimson Spinel
    [32195] = {32196, 32204, 35488, 35489, },
    -- Purified Dreadstone
    [40133] = {40134, 40151, 40170, 40175, },
};

GL.Data.NormalModeHardModeLinks = NormalModeHardModeLinks;

-- Materialize data for ease of use during runtime
--- @test /dump _G.Gargul.Data.NormalModeHardModeLinks[94955];
--- @test /dump _G.Gargul.Data.NormalModeHardModeLinks[96890];
GL.timerAfter(8, function ()
    GL:afterCombatDo(function ()
        local AdditionalEntries = {};
        for ID, LinkedIDs in pairs(NormalModeHardModeLinks) do

            if (type(LinkedIDs) == "number") then
                LinkedIDs = { LinkedIDs, };
            end

            for _, linkedID in pairs(LinkedIDs) do
                AdditionalEntries[linkedID] = ID;
            end
        end

        for ID, linkedID in pairs(AdditionalEntries) do
            NormalModeHardModeLinks[ID] = linkedID;
        end
        AdditionalEntries = {};
    end);
end);
