##
 # uninstall.mcfunction
 # 
 #
 # Created by DJT3.
##
kill @e[type=text_display,tag=leaderboard]

scoreboard objectives remove leaderboard

data remove storage leaderboard:temp_namelist names
data remove storage leaderboard:temp_namelist max_id
data remove storage leaderboard:temp_namelist names_ordered
data remove storage leaderboard:temp_namelist names_unordered

data remove storage leaderboard:line score
data remove storage leaderboard:line rank
data remove storage leaderboard:line lines
data remove storage leaderboard:line sep
data remove storage leaderboard:line sep_min
data remove storage leaderboard:line sep_max
data remove storage leaderboard:line name
data remove storage leaderboard:line value
data remove storage leaderboard:line value_0
data remove storage leaderboard:line value_1
data remove storage leaderboard:line value_2
data remove storage leaderboard:line value_3
data remove storage leaderboard:line billboard
data remove storage leaderboard:line color
data remove storage leaderboard:line bold_name
data remove storage leaderboard:line close_background

data remove storage leaderboard:temp_player player
data remove storage leaderboard:temp_player score
data remove storage leaderboard:update score
data remove storage leaderboard:update max_players


datapack disable "file/LeaderBoards_1.21.6_v3.0"
datapack disable "file/LeaderBoards_1.21.6_v3.0.zip"
tellraw @s {"text":"Leaderboard Datapack Uninstalled successfully","color":"red"}
reload