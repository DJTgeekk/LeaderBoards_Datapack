##
 # add_line.mcfunction
 # 
 #
 # Created by DJT3.
##
$execute at @s unless entity @e[distance=$(sep_min)..$(sep_max),type=text_display,nbt={data:{score:$(score)}},tag=!top,tag=$(lines)] run summon text_display ~ ~-$(sep) ~ {Tags:["$(lines)","leaderboard"],data:{score:$(score)},billboard:$(billboard),transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},alignment:"left",line_width:2000f}
$execute at @s run data modify entity @e[distance=$(sep_min)..$(sep_max),type=text_display,nbt={data:{score:$(score)}},tag=!top,tag=$(lines),limit=1] Rotation set from entity @n[tag=top,nbt={data:{score:$(score)}}] Rotation
