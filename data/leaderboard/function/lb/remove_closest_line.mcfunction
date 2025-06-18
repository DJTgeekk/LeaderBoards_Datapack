##
 # remove_closest_line.mcfunction
 # 
 #
 # Created by DJT3.
##
execute as @s run scoreboard players operation #int.temp_lines leaderboard += #const.1 leaderboard
execute store result storage leaderboard:line lines int 1 run scoreboard players get #int.temp_lines leaderboard
execute as @s run scoreboard players operation #int.temp_lines leaderboard += #const.1 leaderboard
execute store result storage leaderboard:line sep_min double 0.29999999999 run scoreboard players get #int.temp_lines leaderboard
execute store result storage leaderboard:line sep_max double 0.30000000001 run scoreboard players get #int.temp_lines leaderboard

execute as @s run function leaderboard:lb/remove_one_line with storage leaderboard:line