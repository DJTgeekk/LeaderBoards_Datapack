##
 # uninstall.mcfunction
 # 
 #
 # Created by DJT3.
##
kill @e[type=text_display,tag=leaderboard]

function leaderboard:lb/remove_scoreboard_loop with storage leaderboard:all_leaderboard_scores

scoreboard objectives remove temp_score_display
scoreboard objectives remove namelist_size
scoreboard objectives remove index
scoreboard objectives remove dummy_1

#data remove storage leaderboard:namelist names
data remove storage leaderboard:temp_namelist names
data remove storage leaderboard:temp_namelist_ordered names
data remove storage leaderboard:temp_namelist_unordered names
data remove storage leaderboard:line score
data remove storage leaderboard:line rank
data remove storage leaderboard:line lines
data remove storage leaderboard:line sep
data remove storage leaderboard:line name
data remove storage leaderboard:temp_player player
data remove storage leaderboard:temp_player index
data remove storage leaderboard:temp_player score
data remove storage leaderboard:remove score
data remove storage leaderboard:all_leaderboard_scores score
data remove storage leaderboard:update_list score
data remove storage leaderboard:update score

data remove storage leaderboard:all_leaderboard_scores score

datapack disable "file/LeaderBoards"
tellraw @s {"text":"Leaderboard Datapack Uninstalled successfully","color":"red"}
reload