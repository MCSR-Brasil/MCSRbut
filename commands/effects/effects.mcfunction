/execute run scoreboard objectives add effectTimer dummy;
/execute run scoreboard objectives add effectRemain dummy;
/execute run scoreboard objectives add random dummy;
/execute run scoreboard objectives add range dummy;
/execute run scoreboard objectives add effectID dummy;
/execute run scoreboard players set @a effectTimer 0;
/execute run scoreboard players set @a effectRemain 300;
/execute run scoreboard players set @a range 25;
/execute at @a run setblock ~ ~-50 ~ minecraft:repeating_command_block[facing=up]{Command:"execute as @a run scoreboard players add @s effectTimer 1",auto:1b};
/execute at @a run setblock ~ ~-49 ~ minecraft:chain_command_block[facing=up]{Command:"execute as @a run scoreboard players set @s effectRemain 300",auto:1b};
/execute at @a run setblock ~ ~-48 ~ minecraft:chain_command_block[facing=up]{Command:"execute as @a run scoreboard players operation @s effectRemain -= @s effectTimer",auto:1b};
/execute at @a run setblock ~ ~-47 ~ minecraft:chain_command_block[facing=up]{Command:"execute as @a run execute as @s if score @s effectRemain matches ..-1 run scoreboard players set @s effectRemain 0",auto:1b};
/execute at @a run setblock ~ ~-46 ~ minecraft:chain_command_block[facing=up]{Command:"execute as @a run title @s actionbar {\"text\":\"Next Effect in: \",\"extra\":[{\"score\":{\"name\":\"@s\",\"objective\":\"effectRemain\"}}]}",auto:1b};
/execute at @a run setblock ~ ~-45 ~ minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={effectTimer=300..}] at @s run summon area_effect_cloud ~ ~ ~ {Tags:[\"random_uuid\"]}",auto:1b};
/execute at @a run setblock ~ ~-44 ~ minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={effectTimer=300..}] store result score @s random run data get entity @e[type=area_effect_cloud,tag=random_uuid,limit=1] UUID[0] 1",auto:1b};
/execute at @a run setblock ~ ~-43 ~ minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={effectTimer=300..}] run scoreboard players operation @s random %= @s range",auto:1b};
/execute at @a run setblock ~ ~-42 ~ minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={effectTimer=300..}] at @s run kill @e[type=area_effect_cloud,tag=random_uuid,distance=..5]",auto:1b};
/execute at @a run setblock ~ ~-41 ~ minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={effectTimer=300..}] run scoreboard players operation @s effectID = @s random",auto:1b};

/execute at @a run setblock ~1 ~-44 ~ minecraft:repeating_command_block[facing=up]{Command:"execute as @a[scores={effectTimer=270}] at @s run playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 1 1",auto:1b};
/execute at @a run setblock ~1 ~-43 ~ minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={effectTimer=280}] at @s run playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 1 0.5",auto:1b};
/execute at @a run setblock ~1 ~-42 ~ minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={effectTimer=290}] at @s run playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 1 1",auto:1b};
/execute at @a run setblock ~1 ~-41 ~ minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={effectTimer=299}] at @s run playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 1 2",auto:1b};


/execute at @a run setblock ~ ~-40 ~ minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={effectTimer=300..,effectID=0}] at @s run effect give @a speed 10 1",auto:1b};
/execute at @a run setblock ~ ~-39 ~ minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={effectTimer=300..,effectID=1}] at @s run effect give @a jump_boost 12 1",auto:1b};
/execute at @a run setblock ~ ~-38 ~ minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={effectTimer=300..,effectID=2}] at @s run effect give @a regeneration 10 1",auto:1b};
/execute at @a run setblock ~ ~-37 ~ minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={effectTimer=300..,effectID=3}] at @s run effect give @a strength 10 1",auto:1b};
/execute at @a run setblock ~ ~-36 ~ minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={effectTimer=300..,effectID=4}] at @s run effect give @a slowness 10 1",auto:1b};
/execute at @a run setblock ~ ~-35 ~ minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={effectTimer=300..,effectID=5}] at @s run effect give @a blindness 12 1",auto:1b};
/execute at @a run setblock ~ ~-34 ~ minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={effectTimer=300..,effectID=6}] at @s run effect give @a haste 10 1",auto:1b};
/execute at @a run setblock ~ ~-33 ~ minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={effectTimer=300..,effectID=7}] at @s run effect give @e levitation 10 1",auto:1b};
/execute at @a run setblock ~ ~-32 ~ minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={effectTimer=300..,effectID=8}] at @s run effect give @a mining_fatigue 10 1",auto:1b};
/execute at @a run setblock ~ ~-31 ~ minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={effectTimer=300..,effectID=9}] at @s run effect give @a dolphins_grace 150 1",auto:1b};
/execute at @a run setblock ~ ~-30 ~ minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={effectTimer=300..,effectID=10}] at @s run effect give @a slow_falling 10 1",auto:1b};
/execute at @a run setblock ~ ~-29 ~ minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={effectTimer=300..,effectID=11}] at @s run effect give @a poison 10 0",auto:1b};
/execute at @a run setblock ~ ~-28 ~ minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={effectTimer=300..,effectID=12}] at @s run effect give @a weakness 10 1",auto:1b};
/execute at @a run setblock ~ ~-27 ~ minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={effectTimer=300..,effectID=13}] at @s run effect give @a wither 10 1",auto:1b};
/execute at @a run setblock ~ ~-26 ~ minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={effectTimer=300..,effectID=14}] at @s run effect give @e invisibility 10 1",auto:1b};
/execute at @a run setblock ~ ~-25 ~ minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={effectTimer=300..,effectID=15}] at @s run effect give @a slow_falling 10 2",auto:1b};
/execute at @a run setblock ~ ~-24 ~ minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={effectTimer=300..,effectID=16}] at @s run effect give @a fire_resistance 10 1",auto:1b};
/execute at @a run setblock ~ ~-23 ~ minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={effectTimer=300..,effectID=17}] at @s run effect give @e minecraft:glowing 10 1",auto:1b};
/execute at @a run setblock ~ ~-22 ~ minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={effectTimer=300..,effectID=18}] at @s run effect give @a minecraft:absorption 10 1",auto:1b};
/execute at @a run setblock ~ ~-21 ~ minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={effectTimer=300..,effectID=19}] at @s run effect give @e levitation 10 1",auto:1b};
/execute at @a run setblock ~ ~-20 ~ minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={effectTimer=300..,effectID=20}] at @s run effect give @a speed 10 5",auto:1b};
/execute at @a run setblock ~ ~-19 ~ minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={effectTimer=300..,effectID=21}] at @s run effect give @a jump_boost 10 5",auto:1b};
/execute at @a run setblock ~ ~-18 ~ minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={effectTimer=300..,effectID=22}] at @s run effect give @a haste 10 5",auto:1b};
/execute at @a run setblock ~ ~-17 ~ minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={effectTimer=300..,effectID=23}] at @s run attribute @s minecraft:generic.max_health base set 40",auto:1b};
/execute at @a run setblock ~ ~-16 ~ minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={effectTimer=300..,effectID=24}] at @s run effect give @a slow_falling 10 10",auto:1b};
/execute at @a run setblock ~ ~-15 ~ minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={effectTimer=300..,effectID=25}] at @s run effect give @a strength 10 10",auto:1b};






/execute at @a run setblock ~ ~-20 ~ minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={effectTimer=300..}] run scoreboard players set @s effectTimer 0",auto:1b};
/execute run scoreboard players set @a range 20;
/tellraw @a ["",{"text":"MCSR Rankeada mas...","bold":true,"color":"green"},{"text":"\n"},{"text":"Um efeito aleatório é aplicado a cada 15 segundos","color":"aqua"}];