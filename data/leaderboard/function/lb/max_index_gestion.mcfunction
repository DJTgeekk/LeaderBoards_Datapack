##
 # max_index_gestion.mcfunction
 # 
 #
 # Created by DJT3.
##
execute store result storage leaderboard:temp_player index int 1 run scoreboard players get lb_index index
execute as @s run function leaderboard:lb/append_with_max_equal with storage leaderboard:temp_player