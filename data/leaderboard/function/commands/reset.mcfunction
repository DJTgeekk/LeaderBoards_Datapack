##
 # reset.mcfunction
 # lb
 #
 # Created by DJT3.
##
execute unless entity 00000070-0000-006e-0000-007400000078 run summon item_display 0 -64 0 {Tags:["name"],UUID:[I;112,110,116,120],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0f,0f,0f]}}
scoreboard objectives add temp_score_display dummy
scoreboard objectives add temp_tag_valid dummy
scoreboard objectives add temp_nb_tags dummy
scoreboard objectives add temp_rank dummy
scoreboard objectives add temp_lines dummy
scoreboard objectives add temp_max dummy
scoreboard objectives add namelist_size dummy
scoreboard objectives add index dummy
scoreboard objectives add dummy_1 dummy
scoreboard objectives add dummy_5 dummy
scoreboard objectives add dummy_20 dummy
scoreboard objectives add dummy_60 dummy
scoreboard objectives add reverse_order dummy
scoreboard objectives add time_mode dummy
scoreboard objectives add value dummy
scoreboard objectives add value_0 dummy
scoreboard objectives add value_1 dummy
scoreboard objectives add value_2 dummy
scoreboard objectives add value_3 dummy
scoreboard objectives add init_state dummy
scoreboard objectives add line_killed dummy
scoreboard players set dummy dummy_1 1
scoreboard players set dummy dummy_5 5
scoreboard players set dummy dummy_20 20
scoreboard players set dummy dummy_60 60

#remove old storage
data remove storage leaderboard:update_uuid UUID_0
data remove storage leaderboard:update_uuid UUID_1
data remove storage leaderboard:update_uuid UUID_2
data remove storage leaderboard:update_uuid UUID_3

# Set new per-leaderboard max_players
execute as @e[type=minecraft:text_display,tag=top,tag=leaderboard,sort=arbitrary] run function leaderboard:lb/add_max_players_to_old_leaderboards

kill @e[type=minecraft:text_display,tag=leaderboard,tag=!top]

# remove old max_players scoreboards
execute if score lb_temp init_state matches 1 run schedule function leaderboard:lb/remove_old_scoreboards 1s

scoreboard players add lb_temp init_state 1
schedule function leaderboard:lb/update_all_init 1s replace
tellraw @a ["",{"text":"Leaderboards ","color":"gold"},{"text":"datapack "},{"text":"loaded","color":"green"}]