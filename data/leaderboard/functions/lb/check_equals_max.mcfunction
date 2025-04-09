##
 # check_equals_max.mcfunction
 # 
 #
 # Created by DJT3.
##
$tag 00000070-0000-006e-0000-007400000078 add $(lines)
$execute store result score lb_temp temp_tag_valid run tag 00000070-0000-006e-0000-007400000078 add $(max_players)
execute if score lb_temp temp_tag_valid matches 0 run scoreboard players set lb_temp temp_max 0
execute unless score lb_temp temp_tag_valid matches 0 run scoreboard players set lb_temp temp_max 1
$tag 00000070-0000-006e-0000-007400000078 remove $(lines)
$tag 00000070-0000-006e-0000-007400000078 remove $(max_players)