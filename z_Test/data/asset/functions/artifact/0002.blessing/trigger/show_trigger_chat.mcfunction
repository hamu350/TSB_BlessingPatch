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

# 
    data modify storage temp: Text set value {}
    data modify storage temp: Text.Select1 set value {"text":"[選ぶ]","clickEvent":{"action":"run_command","value":"/trigger 02.Trigger set 1"},"color":"gold"}
    data modify storage temp: Text.Select2 set value {"text":"[選ぶ]","clickEvent":{"action":"run_command","value":"/trigger 02.Trigger set 2"},"color":"gold"}
    data modify storage temp: Text.Select3 set value {"text":"[選ぶ]","clickEvent":{"action":"run_command","value":"/trigger 02.Trigger set 3"},"color":"gold"}
    data modify storage temp: Text.Select4 set value {"text":"[選ぶ]","clickEvent":{"action":"run_command","value":"/trigger 02.Trigger set 4"},"color":"gold"}
    data modify storage temp: Text.Value1 set value {"text": "0", "color": "yellow"}
    data modify storage temp: Text.Value2 set value {"text": "0", "color": "yellow"}
    data modify storage temp: Text.Value3 set value {"text": "0", "color": "yellow"}
    data modify storage temp: Text.Value4 set value {"text": "0", "color": "yellow"}
    data modify storage temp: Text.Score1 set value {"score":{"name": "@s","objective":"02.MaxHealthSelectBonusSum"}}
    data modify storage temp: Text.Score2 set value {"score":{"name": "@s","objective":"02.MaxMPSelectCount"}}
    data modify storage temp: Text.Score3 set value {"score":{"name": "@s","objective":"02.AttackSelectCount"}}
    data modify storage temp: Text.Score4 set value {"score":{"name": "@s","objective":"02.DefenseSelectCount"}}
    # 選択回数が最大取得数以上なら選択不能になる
        execute if score @s 02.MaxHealthSelectCount matches 30.. run data modify storage temp: Text.Select1 set value {"text":"[選ぶ]","color":"gray"}
        execute if score @s 02.MaxHealthSelectCount matches 30.. run data modify storage temp: Text.Value1 set value {"text": "2", "color": "aqua"}
        execute if score @s 02.MaxMPSelectCount matches 30.. run data modify storage temp: Text.Select2 set value {"text":"[選ぶ]","color":"gray"}
        execute if score @s 02.MaxMPSelectCount matches 30.. run data modify storage temp: Text.Value2 set value {"text": "4", "color": "aqua"}
        execute if score @s 02.AttackSelectCount matches 30.. run data modify storage temp: Text.Select3 set value {"text":"[選ぶ]","color":"gray"}
        execute if score @s 02.AttackSelectCount matches 30.. run data modify storage temp: Text.Value3 set value {"text": "1", "color": "aqua"}
        execute if score @s 02.DefenseSelectCount matches 30.. run data modify storage temp: Text.Select4 set value {"text":"[選ぶ]","color":"gray"}
        execute if score @s 02.DefenseSelectCount matches 30.. run data modify storage temp: Text.Value4 set value {"text": "1", "color": "aqua"}

    tellraw @s {"translate": "%1$s §f体力%2$s+%3$s §f(合計%2$s+%4$s%2$s/%2$s§f60)", "with": [{"storage":"temp:","nbt":"Text.Select1","interpret": true},{"text":"\u0002","font":"space"},{"storage":"temp:","nbt":"Text.Value1","interpret": true},{"storage":"temp:","nbt":"Text.SelectOff","interpret": true}]}
    tellraw @s {"translate": "%1$s §f魔力%2$s+%3$s §f(合計%2$s+%4$s%2$s/%2$s§f60)", "with": [{"storage":"temp:","nbt":"Text.Select2","interpret": true},{"text":"\u0002","font":"space"},{"storage":"temp:","nbt":"Text.Value2","interpret": true},{"score":{"name": "@s","objective":"02.MaxHealthSelectBonusSum"}}]}
    tellraw @s {"translate": "%1$s §f攻撃%2$s+%3$s §f(合計%2$s+%4$s%2$s/%2$s§f60)", "with": [{"storage":"temp:","nbt":"Text.Select3","interpret": true},{"text":"\u0002","font":"space"},{"storage":"temp:","nbt":"Text.Value3","interpret": true},{"score":{"name": "@s","objective":"02.MaxHealthSelectBonusSum"}}]}
    tellraw @s {"translate": "%1$s §f防御%2$s+%3$s §f(合計%2$s+%4$s%2$s/%2$s§f60)", "with": [{"storage":"temp:","nbt":"Text.Select4","interpret": true},{"text":"\u0002","font":"space"},{"storage":"temp:","nbt":"Text.Value4","interpret": true},{"score":{"name": "@s","objective":"02.MaxHealthSelectBonusSum"}}]}

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
