##
 # remove_one_line.mcfunction
 # 
 #
 # Created by DJT3.
##
$execute at @s run kill @e[distance=$(sep_min)..$(sep_max),type=text_display,nbt={data:{score:$(score)}},tag=!top,tag=$(lines)]