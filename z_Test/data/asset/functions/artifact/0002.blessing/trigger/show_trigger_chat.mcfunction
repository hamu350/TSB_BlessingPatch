#> asset:artifact/0002.blessing/trigger/show_trigger_chat
#
#
#
# @within function asset:artifact/0002.blessing/trigger/*

# 出力
    tellraw @s {"text":"能力ボーナスを一つ選んでください"}

# 選択トリガー
    scoreboard players reset @s 02.Trigger
    scoreboard players enable @s 02.Trigger
# 出力
    execute unless score @s 02.MaxHealthSelectCount matches -2147483648..2147483647 run scoreboard players set @s 02.MaxHealthSelectCount 0
    execute unless score @s 02.MaxMPSelectCount matches -2147483648..2147483647 run scoreboard players set @s 02.MaxMPSelectCount 0
    execute unless score @s 02.AttackSelectCount matches -2147483648..2147483647 run scoreboard players set @s 02.AttackSelectCount 0
    execute unless score @s 02.DefenseSelectCount matches -2147483648..2147483647 run scoreboard players set @s 02.DefenseSelectCount 0
    execute unless score @s 02.MaxHealthSelectBonusSum matches -2147483648..2147483647 run scoreboard players set @s 02.MaxHealthSelectBonusSum 0
    execute unless score @s 02.MaxMPSelectBonusSum matches -2147483648..2147483647 run scoreboard players set @s 02.MaxMPSelectBonusSum 0
    execute unless score @s 02.BonusAttack matches -2147483648..2147483647 run scoreboard players set @s 02.BonusAttack 0
    execute unless score @s 02.BonusDefense matches -2147483648..2147483647 run scoreboard players set @s 02.BonusDefense 0

# 選択回数が30以上なら選択不能になる
    execute if score @s 02.MaxHealthSelectCount matches 30.. run tellraw @s [{"text":"[選ぶ]","color":"gray"},{"text":" 体力","color":"white"},{"text":"\u0002","font":"space"},{"text":"+","color":"white"},{"text":"0","color":"yellow"},{"text":" (合計","color":"white"},{"text":"\u0002","font":"space"},{"text":"+","color":"white"},{"score":{"name": "@s","objective":"02.MaxHealthSelectBonusSum"},"color":"yellow"},{"text":"\u0002","font":"space"},{"text":"/","color":"white"},{"text":"\u0002","font":"space"},{"text":"60)","color":"white"}]
    execute if score @s 02.MaxHealthSelectCount matches ..29 run tellraw @s [{"text":"[選ぶ]","clickEvent":{"action":"run_command","value":"/trigger 02.Trigger set 1"},"color":"gold"},{"text":" 体力","color":"white"},{"text":"\u0002","font":"space"},{"text":"+","color":"white"},{"text":"2","color":"aqua"},{"text":" (合計","color":"white"},{"text":"\u0002","font":"space"},{"text":"+","color":"white"},{"score":{"name": "@s","objective":"02.MaxHealthSelectBonusSum"},"color":"aqua"},{"text":"\u0002","font":"space"},{"text":"/","color":"white"},{"text":"\u0002","font":"space"},{"text":"60)","color":"white"}]
    execute if score @s 02.MaxMPSelectCount matches 30.. run tellraw @s [{"text":"[選ぶ]","color":"gray"},{"text":" 魔力","color":"white"},{"text":"\u0002","font":"space"},{"text":"+","color":"white"},{"text":"0","color":"yellow"},{"text":" (合計","color":"white"},{"text":"\u0002","font":"space"},{"text":"+","color":"white"},{"score":{"name": "@s","objective":"02.MaxMPSelectBonusSum"},"color":"yellow"},{"text":"\u0002","font":"space"},{"text":"/","color":"white"},{"text":"\u0002","font":"space"},{"text":"120)","color":"white"}]
    execute if score @s 02.MaxMPSelectCount matches ..29 run tellraw @s [{"text":"[選ぶ]","clickEvent":{"action":"run_command","value":"/trigger 02.Trigger set 2"},"color":"gold"},{"text":" 魔力","color":"white"},{"text":"\u0002","font":"space"},{"text":"+","color":"white"},{"text":"4","color":"aqua"},{"text":" (合計","color":"white"},{"text":"\u0002","font":"space"},{"text":"+","color":"white"},{"score":{"name": "@s","objective":"02.MaxMPSelectBonusSum"},"color":"aqua"},{"text":"\u0002","font":"space"},{"text":"/","color":"white"},{"text":"\u0002","font":"space"},{"text":"120)","color":"white"}]
    execute if score @s 02.AttackSelectCount matches 30.. run tellraw @s [{"text":"[選ぶ]","color":"gray"},{"text":" 攻撃","color":"white"},{"text":"\u0002","font":"space"},{"text":"+","color":"white"},{"text":"0","color":"yellow"},{"text":"% (合計","color":"white"},{"text":"\u0002","font":"space"},{"text":"+","color":"white"},{"score":{"name": "@s","objective":"02.BonusAttack"},"color":"yellow"},{"text":"\u0002","font":"space"},{"text":"/","color":"white"},{"text":"\u0002","font":"space"},{"text":"30%)","color":"white"}]
    execute if score @s 02.AttackSelectCount matches ..29 run tellraw @s [{"text":"[選ぶ]","clickEvent":{"action":"run_command","value":"/trigger 02.Trigger set 3"},"color":"gold"},{"text":" 攻撃","color":"white"},{"text":"\u0002","font":"space"},{"text":"+","color":"white"},{"text":"1","color":"aqua"},{"text":"% (合計","color":"white"},{"text":"\u0002","font":"space"},{"text":"+","color":"white"},{"score":{"name": "@s","objective":"02.BonusAttack"},"color":"aqua"},{"text":"\u0002","font":"space"},{"text":"/","color":"white"},{"text":"\u0002","font":"space"},{"text":"30%)","color":"white"}]
    execute if score @s 02.DefenseSelectCount matches 30.. run tellraw @s [{"text":"[選ぶ]","color":"gray"},{"text":" 防御","color":"white"},{"text":"\u0002","font":"space"},{"text":"+","color":"white"},{"text":"0","color":"yellow"},{"text":"% (合計","color":"white"},{"text":"\u0002","font":"space"},{"text":"+","color":"white"},{"score":{"name": "@s","objective":"02.BonusDefense"},"color":"yellow"},{"text":"\u0002","font":"space"},{"text":"/","color":"white"},{"text":"\u0002","font":"space"},{"text":"30%)","color":"white"}]
    execute if score @s 02.DefenseSelectCount matches ..29 run tellraw @s [{"text":"[選ぶ]","clickEvent":{"action":"run_command","value":"/trigger 02.Trigger set 4"},"color":"gold"},{"text":" 防御","color":"white"},{"text":"\u0002","font":"space"},{"text":"+","color":"white"},{"text":"1","color":"aqua"},{"text":"% (合計","color":"white"},{"text":"\u0002","font":"space"},{"text":"+","color":"white"},{"score":{"name": "@s","objective":"02.BonusDefense"},"color":"aqua"},{"text":"\u0002","font":"space"},{"text":"/","color":"white"},{"text":"\u0002","font":"space"},{"text":"30%)","color":"white"}]

# リスナー
    schedule function asset:artifact/0002.blessing/trigger/listener 1t
