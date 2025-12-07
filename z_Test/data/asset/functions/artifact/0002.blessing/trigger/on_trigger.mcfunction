#> asset:artifact/0002.blessing/trigger/on_trigger
#
#
#
# @within function asset:artifact/0002.blessing/trigger/listener

# エラー値
    execute unless score @s 02.Trigger matches 1..4 run function lib:message/invalid_operation
    execute unless score @s 02.Trigger matches 1..4 run return run function asset:artifact/0002.blessing/trigger/show_trigger_chat
# 体力
    execute if score @s 02.Trigger matches 1 if score @s 02.MaxHealthSelectCount matches 30.. run tellraw @s [{"text":"上限を超えてステータスを上げることは出来ません","color":"red"}]
    execute if score @s 02.Trigger matches 1 if score @s 02.MaxHealthSelectCount matches 30.. run return run function asset:artifact/0002.blessing/trigger/show_trigger_chat
    execute if score @s 02.Trigger matches 1 run scoreboard players add @s 02.BonusHealth 2
    execute if score @s 02.Trigger matches 1 run scoreboard players add @s 02.MaxHealthSelectBonusSum 2
    execute if score @s 02.Trigger matches 1 run scoreboard players add @s 02.MaxHealthSelectCount 1
    execute if score @s 02.Trigger matches 1 run function api:modifier/max_health/update_bonus
# MP
    execute if score @s 02.Trigger matches 2 if score @s 02.MaxMPSelectCount matches 30.. run tellraw @s [{"text":"上限を超えてステータスを上げることは出来ません","color":"red"}]
    execute if score @s 02.Trigger matches 2 if score @s 02.MaxMPSelectCount matches 30.. run return run function asset:artifact/0002.blessing/trigger/show_trigger_chat
    execute if score @s 02.Trigger matches 2 run scoreboard players add @s 02.BonusMP 4
    execute if score @s 02.Trigger matches 2 run scoreboard players add @s 02.MaxMPSelectBonusSum 4
    execute if score @s 02.Trigger matches 2 run scoreboard players add @s 02.MaxMPSelectCount 1
    execute if score @s 02.Trigger matches 2 run function api:modifier/max_mp/update_bonus
# 攻撃
    execute if score @s 02.Trigger matches 3 if score @s 02.AttackSelectCount matches 30.. run tellraw @s [{"text":"上限を超えてステータスを上げることは出来ません","color":"red"}]
    execute if score @s 02.Trigger matches 3 if score @s 02.AttackSelectCount matches 30.. run return run function asset:artifact/0002.blessing/trigger/show_trigger_chat
    execute if score @s 02.Trigger matches 3 run scoreboard players add @s 02.BonusAttack 1
    execute if score @s 02.Trigger matches 3 run scoreboard players add @s 02.AttackSelectCount 1
    execute if score @s 02.Trigger matches 3 run function api:modifier/attack/base/update_bonus
# 防御
    execute if score @s 02.Trigger matches 4 if score @s 02.DefenseSelectCount matches 30.. run tellraw @s [{"text":"上限を超えてステータスを上げることは出来ません","color":"red"}]
    execute if score @s 02.Trigger matches 4 if score @s 02.DefenseSelectCount matches 30.. run return run function asset:artifact/0002.blessing/trigger/show_trigger_chat
    execute if score @s 02.Trigger matches 4 run scoreboard players add @s 02.BonusDefense 1
    execute if score @s 02.Trigger matches 4 run scoreboard players add @s 02.DefenseSelectCount 1
    execute if score @s 02.Trigger matches 4 run function api:modifier/defense/base/update_bonus
# リセット
    scoreboard players reset @s 02.Trigger
