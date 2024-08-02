##
 # update_all_init.mcfunction
 # 
 #
 # Created by DJT3.
##
data modify storage leaderboard:update_list UUID_0 set from storage leaderboard:update_uuid UUID_0
data modify storage leaderboard:update_list UUID_1 set from storage leaderboard:update_uuid UUID_1
data modify storage leaderboard:update_list UUID_2 set from storage leaderboard:update_uuid UUID_2
data modify storage leaderboard:update_list UUID_3 set from storage leaderboard:update_uuid UUID_3
execute store result score update_size namelist_size run data get storage leaderboard:update_list UUID_0
execute unless score update_size namelist_size matches 0 run function leaderboard:lb/update_all_leaderboard
