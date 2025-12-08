#> asset:artifact/0002.blessing/trigger/on_trigger
#
#
#
# @within function asset:artifact/0002.blessing/trigger/listener

# エラー値
    execute unless score @s 02.Trigger matches 1..105 run function lib:message/invalid_operation
    execute unless score @s 02.Trigger matches 1..105 run return run function asset:artifact/0002.blessing/trigger/show_trigger_chat
# 1 体力
    execute if score @s 02.Trigger matches 1 if score @s 02.SelectCount.01.MaxHealth >= $1 02.MaxUse run tellraw @s [{"text":"上限を超えてステータスを上げることは出来ません","color":"red"}]
    execute if score @s 02.Trigger matches 1 if score @s 02.SelectCount.01.MaxHealth >= $1 02.MaxUse run return run function asset:artifact/0002.blessing/trigger/show_trigger_chat
    execute if score @s 02.Trigger matches 1 run scoreboard players operation @s 02.Bonus.01.Health += $1 02.Value
    execute if score @s 02.Trigger matches 1 run scoreboard players operation @s 02.SelectBonusSum.01.MaxHealthSelect += $1 02.Value
    execute if score @s 02.Trigger matches 1 run scoreboard players add @s 02.SelectCount.01.MaxHealth 1
    execute if score @s 02.Trigger matches 1 run function api:modifier/max_health/update_bonus
# 2 MP
    execute if score @s 02.Trigger matches 2 if score @s 02.SelectCount.02.MaxMP >= $2 02.MaxUse run tellraw @s [{"text":"上限を超えてステータスを上げることは出来ません","color":"red"}]
    execute if score @s 02.Trigger matches 2 if score @s 02.SelectCount.02.MaxMP >= $2 02.MaxUse run return run function asset:artifact/0002.blessing/trigger/show_trigger_chat
    execute if score @s 02.Trigger matches 2 run scoreboard players operation @s 02.Bonus.02.MP += $2 02.Value
    execute if score @s 02.Trigger matches 2 run scoreboard players operation @s 02.SelectBonusSum.02.MaxMPSelect += $2 02.Value
    execute if score @s 02.Trigger matches 2 run scoreboard players add @s 02.SelectCount.02.MaxMP 1
    execute if score @s 02.Trigger matches 2 run function api:modifier/max_mp/update_bonus
# 3 攻撃
    execute if score @s 02.Trigger matches 3 if score @s 02.SelectCount.03.Attack >= $3 02.MaxUse run tellraw @s [{"text":"上限を超えてステータスを上げることは出来ません","color":"red"}]
    execute if score @s 02.Trigger matches 3 if score @s 02.SelectCount.03.Attack >= $3 02.MaxUse run return run function asset:artifact/0002.blessing/trigger/show_trigger_chat
    execute if score @s 02.Trigger matches 3 run scoreboard players operation @s 02.Bonus.03.Attack += $3 02.Value
    execute if score @s 02.Trigger matches 5 run scoreboard players operation @s 02.SelectBonusSum.03.Attack += $3 02.Value
    execute if score @s 02.Trigger matches 3 run scoreboard players add @s 02.SelectCount.03.Attack 1
    execute if score @s 02.Trigger matches 3 run function api:modifier/attack/base/update_bonus
# 4 防御
    execute if score @s 02.Trigger matches 4 if score @s 02.SelectCount.04.Defense >= $4 02.MaxUse run tellraw @s [{"text":"上限を超えてステータスを上げることは出来ません","color":"red"}]
    execute if score @s 02.Trigger matches 4 if score @s 02.SelectCount.04.Defense >= $4 02.MaxUse run return run function asset:artifact/0002.blessing/trigger/show_trigger_chat
    execute if score @s 02.Trigger matches 4 run scoreboard players operation @s 02.Bonus.04.Defense += $4 02.Value
    execute if score @s 02.Trigger matches 5 run scoreboard players operation @s 02.SelectBonusSum.04.Defense += $4 02.Value
    execute if score @s 02.Trigger matches 4 run scoreboard players add @s 02.SelectCount.04.Defense 1
    execute if score @s 02.Trigger matches 4 run function api:modifier/defense/base/update_bonus
# 5 落下耐性
    execute if score @s 02.Trigger matches 5 if score @s 02.SelectCount.05.FallResistance >= $5 02.MaxUse run tellraw @s [{"text":"上限を超えてステータスを上げることは出来ません","color":"red"}]
    execute if score @s 02.Trigger matches 5 if score @s 02.SelectCount.05.FallResistance >= $5 02.MaxUse run return run function asset:artifact/0002.blessing/trigger/show_trigger_chat
    execute if score @s 02.Trigger matches 5 run scoreboard players operation @s 02.Bonus.05.FallResistance += $5 02.Value
    execute if score @s 02.Trigger matches 5 run scoreboard players operation @s 02.SelectBonusSum.05.FallResistanceSelect += $5 02.Value
    execute if score @s 02.Trigger matches 5 run scoreboard players add @s 02.SelectCount.05.FallResistance 1
    execute if score @s 02.Trigger matches 5 run function api:modifier/fall_resistance/update_bonus
# 101~ MAX
    execute if score @s 02.Trigger matches 101.. run function asset:artifact/0002.blessing/trigger/max/
# 祝福選択数
    execute if score @s 02.Trigger matches 1..5 run scoreboard players add @s 02.UseCount 1
# リセット
    scoreboard players reset @s 02.Trigger

# 祝福がまだ残っていれば選ばせる
    execute if score @s 02.UseCount < $BlessingUseCount Global run function asset:artifact/0002.blessing/trigger/show_trigger_chat
