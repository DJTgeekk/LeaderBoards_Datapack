##
 # reset.mcfunction
 # lb
 #
 # Created by DJT3.
##
scoreboard objectives add temp_score_display dummy
scoreboard objectives add temp_rank dummy
scoreboard objectives add temp_lines dummy
scoreboard objectives add temp_max dummy
scoreboard objectives add namelist_size dummy
scoreboard objectives add dummy_1 dummy
scoreboard objectives add dummy_2 dummy
scoreboard objectives add dummy_3 dummy
scoreboard objectives add dummy_5 dummy
scoreboard objectives add dummy_20 dummy
scoreboard objectives add dummy_60 dummy
scoreboard objectives add value dummy
scoreboard objectives add value_0 dummy
scoreboard objectives add value_1 dummy
scoreboard objectives add value_2 dummy
scoreboard objectives add value_3 dummy
scoreboard objectives add line_killed dummy
scoreboard objectives add data_d dummy

scoreboard players set dummy dummy_1 1
scoreboard players set dummy dummy_2 2
scoreboard players set dummy dummy_3 3
scoreboard players set dummy dummy_5 5
scoreboard players set dummy dummy_20 20
scoreboard players set dummy dummy_60 60

# init time_mode storage
data modify storage leaderboard:line value_0 set value 0
data modify storage leaderboard:line value_1 set value 0
data modify storage leaderboard:line value_2 set value 0
data modify storage leaderboard:line value_3 set value 0

kill @e[type=minecraft:text_display,tag=leaderboard,tag=!top]
kill 00000070-0000-006e-0000-007400000078

schedule function leaderboard:lb/update_all_init 1s replace
tellraw @a ["",{"text":"Leaderboards ","color":"gold"},{"text":"datapack "},{"text":"loaded","color":"green"}]