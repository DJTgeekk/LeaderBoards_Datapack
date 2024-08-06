##
 # remove_extra_line.mcfunction
 # 
 #
 # Created by DJT3.
##
$execute store success score lb_temp line_killed at @s run kill @e[distance=$(sep_min)..$(sep_max),type=text_display,tag=display_$(score),tag=!top,tag=$(lines)]

scoreboard players operation lb_temp temp_lines += dummy dummy_1
scoreboard players operation lb_temp temp_rank = lb_temp temp_lines
scoreboard players operation lb_temp temp_rank += dummy dummy_1
execute store result storage leaderboard:line rank int 1 run scoreboard players get lb_temp temp_rank
execute store result storage leaderboard:line lines int 1 run scoreboard players get lb_temp temp_lines
execute store result storage leaderboard:line sep double 0.30 run scoreboard players get lb_temp temp_rank
execute store result storage leaderboard:line sep_min double 0.29999999999 run scoreboard players get lb_temp temp_rank
execute store result storage leaderboard:line sep_max double 0.30000000001 run scoreboard players get lb_temp temp_rank

execute as @s run function leaderboard:lb/check_equals_max with storage leaderboard:line

execute if score lb_temp line_killed matches 1 as @s run function leaderboard:lb/remove_extra_line with storage leaderboard:line