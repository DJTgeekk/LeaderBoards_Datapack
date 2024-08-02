##
 # reset.mcfunction
 # lb
 #
 # Created by DJT3.
##
execute unless entity 00000070-0000-006e-0000-007400000078 run summon item_display 0 -64 0 {Tags:["name"],UUID:[I;112,110,116,120],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0f,0f,0f]}}
scoreboard objectives add temp_score_display dummy
scoreboard objectives add namelist_size dummy
scoreboard objectives add index dummy
scoreboard objectives add update_index dummy
scoreboard objectives add dummy_1 dummy
scoreboard players set dummy dummy_1 1
schedule function leaderboard:lb/update_all_init 10s replace
