/execute run scoreboard objectives add luckyblockTimer dummy;
/execute run scoreboard objectives add luckyblockRemain dummy;
/execute run scoreboard objectives add luckyblockRandom dummy;
/execute run scoreboard objectives add luckyblockRange dummy;
/execute run scoreboard objectives add luckyblockID dummy;
/forceload add 0 0;

/execute run scoreboard players set @a luckyblockTimer 0;
/execute run scoreboard players set @a luckyblockRemain 500;
/execute run scoreboard players set @a luckyblockRandom 0;
/execute run scoreboard players set @a luckyblockRange 20;
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

/execute at @a run setblock ~ ~-50 ~2 minecraft:repeating_command_block[facing=up]{Command:"execute as @a[scores={playerheadmine=1..}] run setblock 0 1 0 redstone_block",auto:1b};
/execute at @a run setblock ~ ~-50 ~3 minecraft:repeating_command_block[facing=up]{Command:"execute as @a[scores={playerheadmine2=1..}] run setblock 0 1 0 redstone_block",auto:1b};
/execute at @a run setblock ~ ~-50 ~4 minecraft:repeating_command_block[facing=up]{Command:"kill @e[type=item,nbt={Item:{id:\"minecraft:player_head\"}}]",auto:1b};
/execute at @a run setblock ~ ~-50 ~5 minecraft:repeating_command_block[facing=up]{Command:"execute as @a[scores={playerheadmine2=1..}] run scoreboard players set @s playerheadmine 1",auto:1b};
/execute at @a run setblock ~ ~-49 ~5 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={playerheadmine2=1..}] run scoreboard players set @s playerheadmine2 0",auto:1b};


/execute at @a run setblock 0 2 0 minecraft:repeating_command_block[facing=up]{Command:"execute as @a[scores={playerheadmine=1..}] at @s run playsound minecraft:block.note_block.bell master @a ~ ~ ~ 1 1",auto:0b};
/execute at @a run setblock 0 3 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={playerheadmine=1..}] at @s run summon area_effect_cloud ~ ~ ~",auto:1b};
/execute at @a run setblock 0 4 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={playerheadmine=1..}] store result score @s luckyblockRandom run data get entity @e[type=area_effect_cloud,limit=1,sort=nearest] UUID[0] 1",auto:1b};
/execute at @a run setblock 0 5 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={playerheadmine=1..}] run scoreboard players operation @s luckyblockRandom %= @s luckyblockRange",auto:1b};
/execute at @a run setblock 0 6 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={playerheadmine=1..}] run scoreboard players operation @s luckyblockID = @s luckyblockRandom",auto:1b};
/execute at @a run setblock 0 7 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={playerheadmine=1..}] run kill @e[type=area_effect_cloud]",auto:1b};
/execute at @a run setblock 0 8 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={playerheadmine=1..,luckyblockID=0}] run loot give @s loot minecraft:chests/end_city_treasure",auto:1b};
/execute at @a run setblock 0 9 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={playerheadmine=1..,luckyblockID=1}] run loot give @s loot minecraft:chests/desert_pyramid",auto:1b};
/execute at @a run setblock 0 10 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={playerheadmine=1..,luckyblockID=2}] run loot give @s loot minecraft:chests/stronghold_corridor",auto:1b};
/execute at @a run setblock 0 11 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={playerheadmine=1..,luckyblockID=3}] run loot give @s loot minecraft:chests/nether_bridge",auto:1b};
/execute at @a run setblock 0 12 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={playerheadmine=1..,luckyblockID=4}] run effect give @s minecraft:levitation 15 1",auto:1b};
/execute at @a run setblock 0 13 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={playerheadmine=1..,luckyblockID=5}] run effect give @s minecraft:speed 15 10",auto:1b};
/execute at @a run setblock 0 14 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={playerheadmine=1..,luckyblockID=6}] run effect give @s minecraft:speed 15 10",auto:1b};
/execute at @a run setblock 0 15 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={playerheadmine=1..,luckyblockID=7}] at @s run fill ~2 ~2 ~2 ~-2 ~-2 ~-2 minecraft:cobweb replace air",auto:1b};
/execute at @a run setblock 0 16 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={playerheadmine=1..,luckyblockID=8}] at @s run summon minecraft:guardian",auto:1b};
/execute at @a run setblock 0 17 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={playerheadmine=1..,luckyblockID=9}] at @s run fill ~5 ~-1 ~5 ~-5 ~6 ~-5 minecraft:gold_block hollow",auto:1b};
/execute at @a run setblock 0 18 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={playerheadmine=1..,luckyblockID=10}] at @s run effect give @s minecraft:jump_boost 15 8 false",auto:1b};
/execute at @a run setblock 0 19 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={playerheadmine=1..,luckyblockID=11}] at @s run summon slime ~ ~ ~ {Size:10}",auto:1b};
/execute at @a run setblock 0 20 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={playerheadmine=1..,luckyblockID=12}] at @s run summon tnt ~ ~ ~ {Fuse:60}",auto:1b};
/execute at @a run setblock 0 21 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={playerheadmine=1..,luckyblockID=13}] at @s run setblock ~ ~10 ~ minecraft:anvil",auto:1b};
/execute at @a run setblock 0 22 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={playerheadmine=1..,luckyblockID=14}] at @s run give @s elytra",auto:1b};
/execute at @a run setblock 0 23 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={playerheadmine=1..,luckyblockID=15}] at @s run give @s netherite_axe",auto:1b};
/execute at @a run setblock 0 24 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={playerheadmine=1..,luckyblockID=16}] at @s run summon villager ~ ~ ~ {Offers:{Recipes:[{buy:{id:\"minecraft:gold_ingot\",Count:20b},sell:{id:\"minecraft:ender_pearl\",Count:1b}}]}}",auto:1b};
/execute at @a run setblock 0 25 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={playerheadmine=1..,luckyblockID=17}] at @s run give @s minecraft:totem_of_undying",auto:1b};
/execute at @a run setblock 0 26 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={playerheadmine=1..,luckyblockID=18}] run loot give @s loot minecraft:chests/end_city_treasure",auto:1b};
/execute at @a run setblock 0 27 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={playerheadmine=1..,luckyblockID=18}] run loot give @s loot minecraft:chests/end_city_treasure",auto:1b};
/execute at @a run setblock 0 28 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={playerheadmine=1..,luckyblockID=19}] run loot give @s loot minecraft:chests/stronghold_corridor",auto:1b};
/execute at @a run setblock 0 29 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={playerheadmine=1..,luckyblockID=19}] run loot give @s loot minecraft:chests/stronghold_corridor",auto:1b};
/execute at @a run setblock 0 30 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={playerheadmine=1..,luckyblockID=20}] run give @s minecraft:trident",auto:1b};
/execute at @a run setblock 0 31 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={playerheadmine=1..,luckyblockID=21}] run give @s minecraft:enchanted_golden_apple",auto:1b};
/execute at @a run setblock 0 32 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={playerheadmine=1..,luckyblockID=22}] run give @s minecraft:bone 1028",auto:1b};
/execute at @a run setblock 0 33 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={playerheadmine=1..,luckyblockID=23}] run give @s minecraft:ender_pearl 2",auto:1b};
/execute at @a run setblock 0 34 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={playerheadmine=1..,luckyblockID=24}] at @s run fill ~5 ~-1 ~5 ~-5 ~6 ~-5 minecraft:cake hollow",auto:1b};
/execute at @a run setblock 0 35 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={playerheadmine=1..,luckyblockID=25}] at @s run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 minecraft:water replace air",auto:1b};
/execute at @a run setblock 0 36 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={playerheadmine=1..,luckyblockID=26}] run give @s minecraft:blaze_spawn_egg 4",auto:1b};
/execute at @a run setblock 0 37 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={playerheadmine=1..,luckyblockID=27}] run give @s minecraft:arrow 32",auto:1b};
/execute at @a run setblock 0 38 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={playerheadmine=1..,luckyblockID=28}] at @s run summon giant ~ ~ ~",auto:1b};
/execute at @a run setblock 0 39 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={playerheadmine=1..,luckyblockID=29}] at @s run summon skeleton ~ ~ ~",auto:1b};
/execute at @a run setblock 0 40 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={playerheadmine=1..,luckyblockID=30}] at @s run effect give @s minecraft:absorption 120 8 true",auto:1b};
/execute at @a run setblock 0 41 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={playerheadmine=1..,luckyblockID=31}] at @s run setblock ~ ~1 ~ spawner{SpawnData:{id:\"minecraft:boat\",Type:\"oak\"}} replace",auto:1b};
/execute at @a run setblock 0 42 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={playerheadmine=1..,luckyblockID=32}] run give @s minecraft:oak_log 64",auto:1b};
/execute at @a run setblock 0 43 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={playerheadmine=1..,luckyblockID=33}] run give @s minecraft:porkchop 16",auto:1b};
/execute at @a run setblock 0 44 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={playerheadmine=1..,luckyblockID=34}] at @s run summon iron_golem ~ ~ ~",auto:1b};
/execute at @a run setblock 0 45 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={playerheadmine=1..,luckyblockID=35}] run give @s minecraft:dolphin_spawn_egg",auto:1b};
/execute at @a run setblock 0 46 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={playerheadmine=1..,luckyblockID=36}] run give @s minecraft:jukebox",auto:1b};
/execute at @a run setblock 0 47 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={playerheadmine=1..,luckyblockID=36}] run give @s minecraft:music_disc_stal",auto:1b};
/execute at @a run setblock 0 48 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={playerheadmine=1..,luckyblockID=37}] run loot give @s loot minecraft:chests/spawn_bonus_chest",auto:1b};
/execute at @a run setblock 0 49 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={playerheadmine=1..,luckyblockID=38}] run teleport @s ~ ~-2 ~",auto:1b};
/execute at @a run setblock 0 50 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={playerheadmine=1..,luckyblockID=39}] run summon wither",auto:1b};




















/execute at @a run setblock 0 30 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={playerheadmine=1..}] run scoreboard players set @s luckyblockTimer 0",auto:1b};
/execute at @a run setblock 0 31 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={playerheadmine2=1..}] run scoreboard players set @s luckyblockTimer 0",auto:1b};
/execute at @a run setblock 0 32 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={playerheadmine=1..}] run scoreboard players set @s playerheadmine 0",auto:1b};
/execute at @a run setblock 0 33 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a run scoreboard players set @s luckyblockID 0",auto:1b};
/execute at @a run setblock 0 34 0 minecraft:chain_command_block[facing=up]{Command:"execute as @a run scoreboard players set @s luckyblockRandom 0",auto:1b};
/execute at @a run setblock 0 35 0 minecraft:chain_command_block[facing=up]{Command:"setblock 0 1 0 air",auto:1b};

/tellraw @a ["",{"text":"LUCKY BLOCKS!!!!!!!!!!","bold":true,"color":"green"},{"text":"\n"},{"text":"Mine them to get the rewards!","color":"yellow"}];