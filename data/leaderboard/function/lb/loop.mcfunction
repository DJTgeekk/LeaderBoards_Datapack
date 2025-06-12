##
 # main.mcfunction
 # lb
 #
 # Created by DJT3.
##
execute as @a[tag=!lb_tracked] run function leaderboard:lb/add_name_to_storage
execute if entity @a if score lb_temp init_state matches 1 run schedule function leaderboard:commands/reset 1t
schedule function leaderboard:lb/loop 1s replace
