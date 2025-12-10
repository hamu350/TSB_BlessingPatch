#> asset:artifact/0002.blessing/trigger/on_trigger/m
#
# @input args
#   ID: str
#   UpdatePath: str
# @within function asset:artifact/0002.blessing/trigger/on_trigger/

execute if score $SelectCount Temporary >= $MaxUse Temporary run tellraw @s [{"text":"上限を超えてステータスを上げることは出来ません","color":"red"}]
execute if score $SelectCount Temporary >= $MaxUse Temporary run return run function asset:artifact/0002.blessing/trigger/show_trigger_chat/
$execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].BlsPatch.Bonus[$(ID)] int 1 run scoreboard players operation $Bonus Temporary += $Value Temporary
$execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].BlsPatch.SelectCount[$(ID)] int 1 run scoreboard players add $SelectCount Temporary 1
$function $(UpdatePath)
