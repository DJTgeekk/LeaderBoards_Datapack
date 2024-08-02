##
 # update_leaderboard.mcfunction
 # 
 #
 # Created by DJT3.
##
$data modify storage leaderboard:line score set value $(score)
function leaderboard:lb/sort_names with storage leaderboard:update

scoreboard players set lb_temp temp_lines 0
scoreboard players set lb_temp temp_rank 1

data modify storage leaderboard:line max_players set string storage leaderboard:update max_players

execute store result storage leaderboard:line rank int 1 run scoreboard players get lb_temp temp_rank
execute store result storage leaderboard:line lines int 1 run scoreboard players get lb_temp temp_lines
execute store result storage leaderboard:line sep double 0.30 run scoreboard players get lb_temp temp_rank
execute store result storage leaderboard:line sep_min double 0.29999999999 run scoreboard players get lb_temp temp_rank
execute store result storage leaderboard:line sep_max double 0.30000000001 run scoreboard players get lb_temp temp_rank

execute store result score lb_temp namelist_size run data get storage leaderboard:temp_namelist_ordered names

function leaderboard:lb/check_equals_max with storage leaderboard:line

$execute as @e[type=text_display,tag=display_$(score),tag=top,nbt={UUID:[I;$(UUID_0),$(UUID_1),$(UUID_2),$(UUID_3)]}] if score lb_temp temp_max matches 1 unless score lb_temp temp_rank > lb_temp namelist_size run function leaderboard:lb/add_line_prep with storage leaderboard:line