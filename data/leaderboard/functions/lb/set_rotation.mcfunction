##
 # set_rotation.mcfunction
 # 
 #
 # Created by DJT3.
##
execute at @s as @e[limit=1,sort=nearest,type=text_display,tag=top,tag=leaderboard] if data entity @s {billboard:"fixed"} run data modify entity @s Rotation set from entity @p Rotation
execute at @s as @e[limit=1,sort=nearest,type=text_display,tag=top,tag=leaderboard] if data entity @s {billboard:"horizontal"} run data modify entity @s Rotation set from entity @p Rotation
execute at @s as @e[limit=1,sort=nearest,type=text_display,tag=top,tag=leaderboard] if data entity @s {billboard:"vertical"} run data modify entity @s Rotation set value [0.0f,0.0f]