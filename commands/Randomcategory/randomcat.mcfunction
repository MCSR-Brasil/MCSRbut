/execute run scoreboard objectives add categoryTimer dummy;
/execute run scoreboard objectives add categoryRemain dummy;
/execute run scoreboard objectives add random dummy;
/execute run scoreboard objectives add range dummy;
/execute run scoreboard objectives add catID dummy;
/execute run scoreboard players set @a categoryTimer 0;
/execute run scoreboard players set @a categoryRemain 6000;
/execute run scoreboard players set @a range 3;
/execute at @a run setblock ~ ~-50 ~ minecraft:repeating_command_block[facing=up]{Command:"execute as @a run scoreboard players add @s categoryTimer 1",auto:1b};
/execute at @a run setblock ~ ~-49 ~ minecraft:chain_command_block[facing=up]{Command:"execute as @a run scoreboard players set @s categoryRemain 6000",auto:1b};
/execute at @a run setblock ~ ~-48 ~ minecraft:chain_command_block[facing=up]{Command:"execute as @a run scoreboard players operation @s categoryRemain -= @s categoryTimer",auto:1b};
/execute at @a run setblock ~ ~-47 ~ minecraft:chain_command_block[facing=up]{Command:"execute as @a run execute as @s if score @s categoryRemain matches ..-1 run scoreboard players set @s categoryRemain 0",auto:1b};
/execute at @a run setblock ~ ~-46 ~ minecraft:chain_command_block[facing=up]{Command:"execute as @a run title @s actionbar {\"text\":\"Next Effect in: \",\"extra\":[{\"score\":{\"name\":\"@s\",\"objective\":\"categoryRemain\"}}]}",auto:1b};
/execute at @a run setblock ~ ~-45 ~ minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={categoryTimer=6000..}] at @s run summon area_effect_cloud ~ ~ ~ {Tags:[\"random_uuid\"]}",auto:1b};
/execute at @a run setblock ~ ~-44 ~ minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={categoryTimer=6000..}] store result score @s random run data get entity @e[type=area_effect_cloud,tag=random_uuid,limit=1] UUID[0] 1",auto:1b};
/execute at @a run setblock ~ ~-43 ~ minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={categoryTimer=6000..}] run scoreboard players operation @s random %= @s range",auto:1b};
/execute at @a run setblock ~ ~-42 ~ minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={categoryTimer=6000..}] at @s run kill @e[type=area_effect_cloud,tag=random_uuid,distance=..5]",auto:1b};
/execute at @a run setblock ~ ~-41 ~ minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={categoryTimer=6000..}] run scoreboard players operation @s catID = @s random",auto:1b};

/execute at @a run setblock ~1 ~-44 ~ minecraft:repeating_command_block[facing=up]{Command:"execute as @a[scores={categoryTimer=5925}] at @s run playsound mcsrranked:ui.rank_up master @a ~ ~ ~ 0.7 0.7",auto:1b};
/execute at @a run setblock ~1 ~-43 ~ minecraft:repeating_command_block[facing=up]{Command:"execute as @a[scores={categoryTimer=5999}] at @s run tellraw @a {\"text\":\"The category is:\"}",auto:1b};
/execute at @a run setblock ~1 ~-42 ~ minecraft:repeating_command_block[facing=up]{Command:"execute as @a[scores={categoryTimer=5999}] at @s run title @a title {\"text\":\"!\"}",auto:1b};


/execute at @a run setblock ~ ~-40 ~ minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={categoryTimer=6000..,catID=0}] at @s run speedrunigt start true STACK_OF_LIME_WOOL",auto:1b};
/execute at @a run setblock ~ ~-39 ~ minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={categoryTimer=6000..,catID=0}] at @s run title @s title {\"text\":\"STACK OF LIME WOOL\"}",auto:1b};
/execute at @a run setblock ~ ~-38 ~ minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={categoryTimer=6000..,catID=0}] at @s run tellraw @a [\"\",{\"text\":\"Stack of lime wool\",\"color\":\"green\"},{\"text\":\"\\nGet 64 lime wool.\\nThe dye is made from green dye (cactus) and white dye (bone)\"}]",auto:1b};

/execute at @a run setblock ~ ~-37 ~ minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={categoryTimer=6000..,catID=1}] at @s run speedrunigt start true HALF",auto:1b};
/execute at @a run setblock ~ ~-36 ~ minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={categoryTimer=6000..,catID=1}] at @s run title @s title {\"text\":\"HALF%\"}",auto:1b};
/execute at @a run setblock ~ ~-35 ~ minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={categoryTimer=6000..,catID=1}] at @s run tellraw @a [\"\",{\"text\":\"Half%\",\"color\":\"green\"},{\"text\":\"\\nComplete 50% of the games achievements, a normal run already completes around 30%, use the advancements tab to help you, or the wiki\"}]",auto:1b};

/execute at @a run setblock ~ ~-34 ~ minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={categoryTimer=6000..,catID=2}] at @s run speedrunigt start true KILL_ALL_BOSSES",auto:1b};
/execute at @a run setblock ~ ~-33 ~ minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={categoryTimer=6000..,catID=2}] at @s run title @s title {\"text\":\"ALL BOSSES\"}",auto:1b};
/execute at @a run setblock ~ ~-32 ~ minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={categoryTimer=6000..,catID=2}] at @s run tellraw @a [\"\",{\"text\":\"All Bosses\",\"color\":\"green\"},{\"text\":\"\\nKILL ALL BOSSES. Dragon, whiter, guardian\"}]",auto:1b};




/execute run scoreboard players set @a range 3;
/tellraw @a ["",{"text":"MCSR Rankeada mas...","bold":true,"color":"green"},{"text":"\n"},{"text":"Um efeito aleatório é aplicado a cada 15 segundos","color":"aqua"}];