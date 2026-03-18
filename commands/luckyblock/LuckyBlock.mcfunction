/execute run scoreboard objectives add luckyblockTimer dummy;
/execute run scoreboard objectives add luckyblockRemain dummy;
/execute run scoreboard objectives add luckyblockRandom dummy;
/execute run scoreboard objectives add luckyblockRange dummy;
/execute run scoreboard objectives add luckyblockID dummy;
/execute run scoreboard objectives add luckyblockActive dummy;
/execute run scoreboard objectives add tower1 dummy;
/execute run scoreboard objectives add tower2 dummy;
/forceload add 0 0;

/execute run scoreboard players set @a luckyblockTimer 0;
/execute run scoreboard players set @a luckyblockRemain 500;
/execute run scoreboard players set @a luckyblockRandom 0;
/execute run scoreboard players set @a luckyblockRange 65;
/execute run scoreboard players set @a luckyblockActive 0;
/execute run scoreboard players set @a tower1 0;
/execute run scoreboard players set @a tower2 0;
/scoreboard objectives add playerheadmine minecraft.mined:minecraft.player_head;
/scoreboard objectives add playerheadmine2 minecraft.mined:minecraft.player_wall_head;

/execute at @a run setblock ~ ~-50 ~ minecraft:repeating_command_block[facing=up]{Command:"execute as @a run scoreboard players add @s luckyblockTimer 1",auto:1b};
/execute at @a run setblock ~ ~-49 ~ minecraft:chain_command_block[facing=up]{Command:"execute as @a run scoreboard players set @s luckyblockRemain 500",auto:1b};
/execute at @a run setblock ~ ~-48 ~ minecraft:chain_command_block[facing=up]{Command:"execute as @a run scoreboard players operation @s luckyblockRemain -= @s luckyblockTimer",auto:1b};
/execute at @a run setblock ~ ~-47 ~ minecraft:chain_command_block[facing=up]{Command:"execute as @a run title @s actionbar {\"text\":\"Next Lucky Block in: \",\"extra\":[{\"score\":{\"name\":\"@s\",\"objective\":\"luckyblockRemain\"}}]}",auto:1b};
/execute at @a run setblock ~ ~-46 ~ minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={luckyblockTimer=450}] at @s run playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 1 1",auto:1b};
/execute at @a run setblock ~ ~-45 ~ minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={luckyblockTimer=460}] at @s run playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 1 0.5",auto:1b};
/execute at @a run setblock ~ ~-44 ~ minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={luckyblockTimer=470}] at @s run playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 1 1",auto:1b};
/execute at @a run setblock ~ ~-43 ~ minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={luckyblockTimer=480}] at @s run playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 1 0.5",auto:1b};
/execute at @a run setblock ~ ~-42 ~ minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={luckyblockTimer=490}] at @s run playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 1 1",auto:1b};
/execute at @a run setblock ~ ~-41 ~ minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={luckyblockTimer=500}] at @s run playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 1 2",auto:1b};
/execute at @a run setblock ~ ~-40 ~ minecraft:chain_command_block[facing=up]{auto:1b,Command:"execute as @a[scores={luckyblockTimer=500}] run give @s minecraft:player_head{display:{Name:'{\"text\":\"Lucky Block\"}'},SkullOwner:\"kim080401\"}"};
/execute at @a run setblock ~ ~-39 ~ minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={luckyblockTimer=500..}] run scoreboard players set @s luckyblockTimer 0",auto:1b};

/execute at @a run setblock ~ ~-50 ~2 minecraft:repeating_command_block[facing=up]{Command:"execute as @a[scores={playerheadmine=1..,}] run scoreboard players set @s tower1 1",auto:1b};
/execute at @a run setblock ~ ~-49 ~2 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={playerheadmine=1..}] run scoreboard players set @s tower2 1",auto:1b};
/execute at @a run setblock ~ ~-48 ~2 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={playerheadmine=1..}] run scoreboard players set @s playerheadmine 0",auto:1b};


/execute at @a run setblock ~ ~-50 ~4 minecraft:repeating_command_block[facing=up]{Command:"execute as @a[scores={tower1=1..}] run setblock 0 1 0 redstone_block",auto:1b};
/execute at @a run setblock ~ ~-50 ~5 minecraft:repeating_command_block[facing=up]{Command:"execute as @a[scores={tower2=1..}] run setblock 1 1 0 redstone_block",auto:1b};

/execute at @a run setblock ~ ~-50 ~6 minecraft:repeating_command_block[facing=up]{Command:"kill @e[type=item,nbt={Item:{id:\"minecraft:player_head\"}}]",auto:1b};

/execute at @a run setblock ~ ~-49 ~5 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={playerheadmine2=1..}] run scoreboard players set @s playerheadmine 1",auto:1b};
/execute at @a run setblock ~ ~-48 ~5 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={playerheadmine2=1..}] run scoreboard players set @s playerheadmine2 0",auto:1b};
/execute at @a run setblock ~ ~-50 ~7 minecraft:repeating_command_block[facing=up]{Command:"execute as @a[scores={playerheadmine=1..,tower1=1..,tower2=1..}] run scoreboard players set @s luckyblockActive 1",auto:1b};
/execute at @a run setblock ~ ~-49 ~7 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={playerheadmine=1..,luckyblockActive=1,tower1=0,tower2=0}] run scoreboard players set @s playerheadmine 0",auto:1b};
/execute at @a run setblock ~ ~-48 ~7 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={playerheadmine=0,luckyblockActive=1,tower1=0,tower2=0}] run scoreboard players set @s luckyblockID 0",auto:1b};
/execute at @a run setblock ~ ~-47 ~7 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={playerheadmine=0,luckyblockActive=1,tower1=0,tower2=0}] run scoreboard players set @s luckyblockRandom 0",auto:1b};
/execute at @a run setblock ~ ~-46 ~7 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={playerheadmine=0,luckyblockActive=1,tower1=0,tower2=0}] run scoreboard players set @s luckyblockActive 0",auto:1b};

/execute at @a run setblock 0 2 0 minecraft:repeating_command_block[facing=up]{Command:"execute as @a[scores={tower1=1..}] at @s run playsound minecraft:block.note_block.bell master @a ~ ~ ~ 1 1",auto:0b};
/execute at @a run setblock 0 3 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={tower1=1..}] at @s run summon area_effect_cloud ~ ~ ~",auto:1b};
/execute at @a run setblock 0 4 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={tower1=1..}] store result score @s luckyblockRandom run data get entity @e[type=area_effect_cloud,limit=1,sort=nearest] UUID[0] 1",auto:1b};
/execute at @a run setblock 0 5 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={tower1=1..}] run scoreboard players operation @s luckyblockRandom %= @s luckyblockRange",auto:1b};
/execute at @a run setblock 0 6 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={tower1=1..}] run scoreboard players operation @s luckyblockID = @s luckyblockRandom",auto:1b};
/execute at @a run setblock 0 7 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={tower1=1..}] run kill @e[type=area_effect_cloud]",auto:1b};
/execute at @a run setblock 0 8 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={tower1=1..,luckyblockID=0}] run loot give @s loot minecraft:chests/end_city_treasure",auto:1b};
/execute at @a run setblock 0 9 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={tower1=1..,luckyblockID=1}] run loot give @s loot minecraft:chests/desert_pyramid",auto:1b};
/execute at @a run setblock 0 10 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={tower1=1..,luckyblockID=2}] run loot give @s loot minecraft:chests/stronghold_corridor",auto:1b};
/execute at @a run setblock 0 11 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={tower1=1..,luckyblockID=3}] run loot give @s loot minecraft:chests/nether_bridge",auto:1b};
/execute at @a run setblock 0 12 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={tower1=1..,luckyblockID=4}] run effect give @s minecraft:levitation 15 1",auto:1b};
/execute at @a run setblock 0 13 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={tower1=1..,luckyblockID=5}] run effect give @s minecraft:speed 15 10",auto:1b};
/execute at @a run setblock 0 14 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={tower1=1..,luckyblockID=6}] run effect give @s minecraft:speed 15 10",auto:1b};
/execute at @a run setblock 0 15 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={tower1=1..,luckyblockID=7}] at @s run fill ~2 ~2 ~2 ~-2 ~-2 ~-2 minecraft:cobweb replace air",auto:1b};
/execute at @a run setblock 0 16 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={tower1=1..,luckyblockID=8}] at @s run summon minecraft:guardian",auto:1b};
/execute at @a run setblock 0 17 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={tower1=1..,luckyblockID=9}] at @s run fill ~5 ~-1 ~5 ~-5 ~6 ~-5 minecraft:gold_block hollow",auto:1b};
/execute at @a run setblock 0 18 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={tower1=1..,luckyblockID=10}] run effect give @s minecraft:jump_boost 15 8 false",auto:1b};
/execute at @a run setblock 0 19 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={tower1=1..,luckyblockID=11}] at @s run summon slime ~ ~ ~ {Size:10}",auto:1b};
/execute at @a run setblock 0 20 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={tower1=1..,luckyblockID=12}] at @s run summon tnt ~ ~ ~ {Fuse:60}",auto:1b};
/execute at @a run setblock 0 21 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={tower1=1..,luckyblockID=13}] at @s run setblock ~ ~10 ~ minecraft:anvil",auto:1b};
/execute at @a run setblock 0 22 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={tower1=1..,luckyblockID=14}] run give @s elytra",auto:1b};
/execute at @a run setblock 0 23 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={tower1=1..,luckyblockID=15}] run give @s diamond_block",auto:1b};
/execute at @a run setblock 0 24 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={tower1=1..,luckyblockID=16}] at @s run summon villager ~ ~ ~ {VillagerData:{profession:\"minecraft:armorer\"},Offers:{Recipes:[{buy:{id:\"minecraft:gold_ingot\",Count:15b},sell:{id:\"minecraft:ender_pearl\",Count:1b}}]}}",auto:1b};
/execute at @a run setblock 0 25 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={tower1=1..,luckyblockID=17}] run give @s minecraft:totem_of_undying",auto:1b};
/execute at @a run setblock 0 26 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={tower1=1..,luckyblockID=18}] run loot give @s loot minecraft:chests/end_city_treasure",auto:1b};
/execute at @a run setblock 0 27 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={tower1=1..,luckyblockID=18}] run loot give @s loot minecraft:chests/end_city_treasure",auto:1b};
/execute at @a run setblock 0 28 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={tower1=1..,luckyblockID=19}] run loot give @s loot minecraft:chests/stronghold_corridor",auto:1b};
/execute at @a run setblock 0 29 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={tower1=1..,luckyblockID=19}] run loot give @s loot minecraft:chests/stronghold_corridor",auto:1b};
/execute at @a run setblock 0 30 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={tower1=1..,luckyblockID=20}] run give @s minecraft:trident",auto:1b};
/execute at @a run setblock 0 31 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={tower1=1..,luckyblockID=21}] run give @s minecraft:enchanted_golden_apple",auto:1b};
/execute at @a run setblock 0 32 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={tower1=1..,luckyblockID=22}] run give @s minecraft:bone 1028",auto:1b};
/execute at @a run setblock 0 33 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={tower1=1..,luckyblockID=23}] run give @s minecraft:ender_pearl 2",auto:1b};
/execute at @a run setblock 0 34 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={tower1=1..,luckyblockID=24}] at @s run fill ~5 ~-1 ~5 ~-5 ~6 ~-5 minecraft:cake hollow",auto:1b};
/execute at @a run setblock 0 35 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={tower1=1..,luckyblockID=25}] at @s run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 minecraft:water replace air",auto:1b};
/execute at @a run setblock 0 36 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={tower1=1..,luckyblockID=26}] run give @s minecraft:blaze_spawn_egg 4",auto:1b};
/execute at @a run setblock 0 37 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={tower1=1..,luckyblockID=27}] run give @s minecraft:crossbow 1",auto:1b};
/execute at @a run setblock 0 38 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={tower1=1..,luckyblockID=28}] at @s run summon giant ~ ~ ~",auto:1b};
/execute at @a run setblock 0 39 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={tower1=1..,luckyblockID=29}] at @s run summon skeleton ~ ~ ~",auto:1b};
/execute at @a run setblock 0 40 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={tower1=1..,luckyblockID=30}] at @s run effect give @s minecraft:absorption 120 8 true",auto:1b};
/execute at @a run setblock 0 41 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={tower1=1..,luckyblockID=31}] at @s run setblock ~ ~ ~ spawner{SpawnData:{id:\"minecraft:boat\",Type:\"oak\"}} replace",auto:1b};
/execute at @a run setblock 0 42 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={tower1=1..,luckyblockID=32}] run give @s minecraft:oak_log 64",auto:1b};
/execute at @a run setblock 0 43 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={tower1=1..,luckyblockID=33}] run give @s minecraft:porkchop 16",auto:1b};
/execute at @a run setblock 0 44 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={tower1=1..,luckyblockID=34}] at @s run summon iron_golem ~ ~ ~",auto:1b};
/execute at @a run setblock 0 45 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={tower1=1..,luckyblockID=35}] run give @s minecraft:dolphin_spawn_egg",auto:1b};
/execute at @a run setblock 0 46 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={tower1=1..,luckyblockID=36}] run give @s minecraft:jukebox",auto:1b};
/execute at @a run setblock 0 47 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={tower1=1..,luckyblockID=36}] run give @s minecraft:music_disc_stal",auto:1b};
/execute at @a run setblock 0 48 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={tower1=1..,luckyblockID=37}] run loot give @s loot minecraft:chests/spawn_bonus_chest",auto:1b};
/execute at @a run setblock 0 49 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={tower1=1..,luckyblockID=38}] at @s run teleport @s ~ ~-2 ~",auto:1b};
/execute at @a run setblock 0 50 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={tower1=1..,luckyblockID=39}] at @s run summon wither ~ ~5 ~",auto:1b};
/execute at @a run setblock 0 51 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={tower1=1..,luckyblockID=40}] at @s run summon bee ~ ~ ~",auto:1b};
/execute at @a run setblock 0 52 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={tower1=1..,luckyblockID=40}] at @s run summon bee ~ ~1 ~",auto:1b};
/execute at @a run setblock 0 53 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={tower1=1..,luckyblockID=40}] at @s run summon bee ~1 ~ ~",auto:1b};

/execute at @a run setblock 1 2 0 minecraft:repeating_command_block[facing=up]{Command:"execute as @a[scores={tower2=1..,luckyblockID=41}] run give @s minecraft:firework_rocket 32",auto:0b};

/execute at @a run setblock 1 3 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={tower2=1..,luckyblockID=42}] at @s run summon shulker ~1 ~ ~",auto:1b};
/execute at @a run setblock 1 4 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={tower2=1..,luckyblockID=43}] run give @s minecraft:end_portal_frame 6",auto:1b};
/execute at @a run setblock 1 5 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={tower2=1..,luckyblockID=44}] run give @s minecraft:piglin_spawn_egg 6",auto:1b};

/execute at @a run setblock 1 6 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={tower2=1..,luckyblockID=45}] run tellraw @s {\"text\":\"Herobrine joined the game\",\"color\":\"yellow\",\"italic\":false}",auto:1b};
/execute at @a run setblock 1 7 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={tower2=1..,luckyblockID=45}] run setblock 0 1 1 minecraft:redstone_block",auto:1b};

/execute at @a run setblock 1 8 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={tower2=1..,luckyblockID=46}] run tellraw @s {\"text\":\"Permanent Speed Boost!\",\"color\":\"green\",\"italic\":false}",auto:1b};
/execute at @a run setblock 1 9 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={tower2=1..,luckyblockID=46}] run attribute @s minecraft:generic.movement_speed base set 0.15",auto:1b};

/execute at @a run setblock 1 10 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={tower2=1..,luckyblockID=47}] run tellraw @s {\"text\":\"Double Health!\",\"color\":\"green\",\"italic\":false}",auto:1b};
/execute at @a run setblock 1 11 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={tower2=1..,luckyblockID=47}] run attribute @s minecraft:generic.max_health base set 40",auto:1b};

/execute at @a run setblock 1 12 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={tower2=1..,luckyblockID=48}] run tellraw @s {\"text\":\"You are a Unicorn Now!!!!!! :3\",\"color\":\"light_purple\",\"italic\":false}",auto:1b};
/execute at @a run setblock 1 13 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={tower2=1..,luckyblockID=48}] run replaceitem entity @s armor.head minecraft:end_rod",auto:1b};

/execute at @a run setblock 1 14 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={tower2=1..,luckyblockID=49}] run tellraw @s {\"text\":\"No more Timer For you, I took it away, you dont need it anymore\",\"color\":\"red\",\"italic\":false}",auto:1b};
/execute at @a run setblock 1 15 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={tower2=1..,luckyblockID=49}] run speedrunigt visible off",auto:1b};

/execute at @a run setblock 1 16 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={tower2=1..,luckyblockID=50}] run tellraw @s {\"text\":\"Instant Dragon Perch Activated\",\"color\":\"green\",\"italic\":false}",auto:1b};
/execute at @a run setblock 1 17 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={tower2=1..,luckyblockID=50}] run gamerule instantDragonPerch true",auto:1b};

/execute at @a run setblock 1 18 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={tower2=1..,luckyblockID=51}] run tellraw @s {\"text\":\"Fall Damage Deactivated\",\"color\":\"green\",\"italic\":false}",auto:1b};
/execute at @a run setblock 1 19 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={tower2=1..,luckyblockID=51}] run gamerule fallDamage false",auto:1b};

/execute at @a run setblock 1 20 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={tower2=1..,luckyblockID=52}] run tellraw @s {\"text\":\"No more Modified Piglin trades Or loot tables, Good luck.\",\"color\":\"red\",\"italic\":false}",auto:1b};
/execute at @a run setblock 1 21 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={tower2=1..,luckyblockID=52}] run gamerule modifyPiglinBarter false",auto:1b};
/execute at @a run setblock 1 22 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={tower2=1..,luckyblockID=52}] run gamerule modifiedLootTables false",auto:1b};

/execute at @a run setblock 1 23 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={tower2=1..,luckyblockID=53}] run tellraw @s {\"text\":\"Begginer mode activated\",\"color\":\"green\",\"italic\":false}",auto:1b};
/execute at @a run setblock 1 24 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={tower2=1..,luckyblockID=53}] run gamerule respawnAtSplit true",auto:1b};
/execute at @a run setblock 1 25 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={tower2=1..,luckyblockID=53}] run gamerule keepInventory true",auto:1b};
/execute at @a run setblock 1 26 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={tower2=1..,luckyblockID=53}] run gamerule immediateRespawn true",auto:1b};

/execute at @a run setblock 1 27 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={tower2=1..,luckyblockID=54}] at @s run summon illusioner ~ ~1 ~",auto:1b};

/execute at @a run setblock 1 28 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={tower2=1..,luckyblockID=55}] at @s run fill ~5 ~10 ~5 ~-5 ~10 ~-5 anvil replace",auto:1b};

/execute at @a run setblock 1 29 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={tower2=1..,luckyblockID=56}] run tellraw @s {\"text\":\"Keep Inventory in On\",\"color\":\"green\",\"italic\":false}",auto:1b};
/execute at @a run setblock 1 30 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={tower2=1..,luckyblockID=56}] run gamerule keepInventory true",auto:1b};

/execute at @a run setblock 1 31 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={tower2=1..,luckyblockID=57}] run tellraw @s {\"text\":\"Kobe\",\"color\":\"green\",\"italic\":false}",auto:1b};
/execute at @a run setblock 1 32 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={tower2=1..,luckyblockID=57}] at @s run summon minecraft:fireball ~ ~2 ~",auto:1b};

/execute at @a run setblock 1 33 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={tower2=1..,luckyblockID=58}] run tellraw @s {\"text\":\"1.8 combat, Spam click away!\",\"color\":\"green\",\"italic\":false}",auto:1b};
/execute at @a run setblock 1 34 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={tower2=1..,luckyblockID=58}] run attribute @a minecraft:generic.attack_speed base set 30",auto:1b};

/execute at @a run setblock 1 35 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={tower2=1..,luckyblockID=59}] at @s run summon minecraft:ghast ~ ~1 ~",auto:1b};
/execute at @a run setblock 1 36 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={tower2=1..,luckyblockID=59}] at @s run summon minecraft:ghast ~2 ~2 ~2",auto:1b};

/execute at @a run setblock 1 37 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={tower2=1..,luckyblockID=60}] at @s run setblock ~ ~ ~ minecraft:water",auto:1b};
/execute at @a run setblock 1 38 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={tower2=1..,luckyblockID=60}] at @s run effect give @a resistance 12 255",auto:1b};
/execute at @a run setblock 1 39 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={tower2=1..,luckyblockID=60}] at @s run summon minecraft:tnt ~ ~ ~",auto:1b};
/execute at @a run setblock 1 40 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={tower2=1..,luckyblockID=60}] at @s run summon minecraft:tnt ~ ~ ~",auto:1b};
/execute at @a run setblock 1 41 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={tower2=1..,luckyblockID=60}] at @s run summon minecraft:tnt ~ ~ ~",auto:1b};

/execute at @a run setblock 1 42 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={tower2=1..,luckyblockID=61}] at @s run summon magma_cube ~ ~ ~ {Size:10}",auto:1b};

/execute at @a run setblock 1 43 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={tower2=1..,luckyblockID=62}] run give @s trident{Enchantments:[{id:\"minecraft:loyalty\",lvl:3s},{id:\"minecraft:riptide\",lvl:3s}]} 1",auto:1b};

/execute at @a run setblock 1 44 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={tower2=1..,luckyblockID=63}] run give @s chorus_fruit 16",auto:1b};

/execute at @a run setblock 1 45 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={tower2=1..,luckyblockID=64}] run tellraw @s {\"text\":\"Random Tick Speed is now 30\",\"color\":\"green\",\"italic\":false}",auto:1b};
/execute at @a run setblock 1 46 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={tower2=1..,luckyblockID=64}] run gamerule randomTickSpeed 30",auto:1b};

/execute at @a run setblock 1 47 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={tower2=1..,luckyblockID=65}] run give @a potion{Potion:\"minecraft:fire_resistance\"} 1",auto:1b};

/execute at @a run setblock 1 48 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={tower2=1..}] run setblock 1 1 0 air",auto:1b};
/execute at @a run setblock 1 49 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={tower2=1..}] run scoreboard players set @s luckyblockID 0",auto:1b};
/execute at @a run setblock 1 50 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={tower2=1..}] run scoreboard players set @s tower2 0",auto:1b};


/execute at @a run setblock 0 54 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={tower1=1..}] run setblock 0 1 0 air",auto:1b};
/execute at @a run setblock 0 55 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={tower1=1..}] run scoreboard players set @s tower1 0",auto:1b};


/tellraw @a ["",{"text":"LUCKY BLOCKS!!!!!!!!!!","bold":true,"color":"green"},{"text":"\n"},{"text":"Mine them to get the rewards!","color":"yellow"}];