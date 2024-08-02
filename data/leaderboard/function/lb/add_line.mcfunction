##
 # add_line.mcfunction
 # 
 #
 # Created by DJT3.
##
$kill @e[type=text_display,tag=display_$(score),tag=$(lines)]
$execute at @e[type=text_display,tag=display_$(score),tag=top] run summon text_display ~ ~-$(sep) ~ {Tags:["display_$(score)","$(lines)","leaderboard"],billboard:"vertical",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},alignment:"left",line_width:2000f,text:"[{\"text\":\"#\"},{\"text\":\"$(rank)\"},{\"text\":\" \"},{\"text\":\"$(name)\"},{\"text\":\" \"},{\"text\":\" : \"},{\"text\":\" \"},{\"score\":{\"name\":\"$(name)\",\"objective\":\"$(score)\"},\"color\":\"red\"}]"}