##
 # append_max_players.mcfunction
 # 
 #
 # Created by DJT3.
##

scoreboard players set lb_index index 0
scoreboard players set lb_max temp_score_display -1

# Find max of all temp_score_display values

data modify storage leaderboard:temp_namelist names set from storage leaderboard:temp_namelist_unordered names
execute store result score lb_temp namelist_size run data get storage leaderboard:temp_namelist names
execute unless score lb_temp namelist_size matches 0 run function leaderboard:lb/find_max
# Find players with max value and append them

execute store result score lb_temp_unorderred namelist_size run data get storage leaderboard:temp_namelist_unordered names
execute unless score lb_index index = lb_temp_unorderred namelist_size run function leaderboard:lb/max_index_gestion
# Next loop ?

execute store result score lb_temp_unorderred namelist_size run data get storage leaderboard:temp_namelist_unordered names
execute store result score lb_temp namelist_size run data get storage leaderboard:temp_namelist_ordered names

#$tellraw @a [{"text":"vals2 : "},{"score":{"name":"lb_temp_unorderred","objective":"namelist_size"}},{"text":",,"},{"score":{"name":"lb_temp","objective":"namelist_size"}},{"text":",,"},{"score":{"name":"lb_max","objective":"display_$(score)_maxlines"}}]
$execute unless score lb_temp_unorderred namelist_size matches 0 run function leaderboard:lb/append_max_players {score:$(score)}