##
 # update_all_leaderboard.mcfunction
 # 
 #
 # Created by DJT3.
##

execute store result score update_size namelist_size run data get storage leaderboard:update_list score
execute unless score update_size namelist_size matches 0 run data modify storage leaderboard:update score set from storage leaderboard:update_list score[-1]
function leaderboard:lb/update_leaderboard with storage leaderboard:update
execute unless score update_size namelist_size matches 0 run data remove storage leaderboard:update_list score[-1]
execute unless score update_size namelist_size matches 0 run function leaderboard:lb/update_all_leaderboard
execute if score update_size namelist_size matches 0 run schedule function leaderboard:lb/update_all_init 10s
