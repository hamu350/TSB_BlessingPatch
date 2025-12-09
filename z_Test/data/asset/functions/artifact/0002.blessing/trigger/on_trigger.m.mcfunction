#> asset:artifact/0002.blessing/trigger/on_trigger.m
#
# @input args
#   ID: str
#   UpdatePath: str
# @within function asset:artifact/0002.blessing/trigger/on_trigger

$execute if score @s 02.SelectCount.$(ID) >= $Blessing.$(ID) 02.MaxUse run tellraw @s [{"text":"上限を超えてステータスを上げることは出来ません","color":"red"}]
$execute if score @s 02.SelectCount.$(ID) >= $Blessing.$(ID) 02.MaxUse run return run function asset:artifact/0002.blessing/trigger/show_trigger_chat
$scoreboard players operation @s 02.Bonus.$(ID) += $Blessing.$(ID) 02.Value
$scoreboard players add @s 02.SelectCount.$(ID) 1
$function $(UpdatePath)
