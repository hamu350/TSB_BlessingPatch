#> asset:artifact/0002.blessing/trigger/rejoin_process
#
# 使い方は必ずwikiを見ること
#
# @within tag/function asset:rejoin

# 
    execute unless score @s 02.UseCount matches -2147483648..2147483647 run scoreboard players set @s 02.UseCount 0

# 祝福残数を確認
    execute if score @s 02.UseCount < $BlessingUseCount Global run function asset:artifact/0002.blessing/trigger/show_trigger_chat

# execute if score @s 02.Trigger matches 0 run function asset:artifact/0002.blessing/trigger/show_trigger_chat