#> asset:artifact/0002.blessing/trigger/show_trigger_chat
#
#
#
# @within function asset:artifact/0002.blessing/trigger/*

# 出力
    scoreboard players operation $Remain Temporary = $BlessingUseCount Global
    scoreboard players operation $Remain Temporary -= @s 02.UseCount
    execute if score $Remain Temporary matches ..1 run tellraw @s {"text":"能力ボーナスを一つ選んでください"}
    execute unless score $Remain Temporary matches ..1 run tellraw @s [{"text":"能力ボーナスを一つ選んでください 残り祝福："}, {"score": {"name": "$Remain", "objective": "Temporary"}}]

# 選択トリガー
    scoreboard players reset @s 02.Trigger
    scoreboard players enable @s 02.Trigger
# 出力
    execute unless score @s 02.SelectCount.01.MaxHealth matches -2147483648..2147483647 run scoreboard players set @s 02.SelectCount.01.MaxHealth 0
    execute unless score @s 02.SelectCount.02.MaxMP matches -2147483648..2147483647 run scoreboard players set @s 02.SelectCount.02.MaxMP 0
    execute unless score @s 02.SelectCount.03.Attack matches -2147483648..2147483647 run scoreboard players set @s 02.SelectCount.03.Attack 0
    execute unless score @s 02.SelectCount.04.Defense matches -2147483648..2147483647 run scoreboard players set @s 02.SelectCount.04.Defense 0
    execute unless score @s 02.SelectCount.05.FallResistance matches -2147483648..2147483647 run scoreboard players set @s 02.SelectCount.05.FallResistance 0
    execute unless score @s 02.SelectBonusSum.01.MaxHealthSelect matches -2147483648..2147483647 run scoreboard players set @s 02.SelectBonusSum.01.MaxHealthSelect 0
    execute unless score @s 02.SelectBonusSum.02.MaxMPSelect matches -2147483648..2147483647 run scoreboard players set @s 02.SelectBonusSum.02.MaxMPSelect 0
    execute unless score @s 02.SelectBonusSum.05.FallResistanceSelect matches -2147483648..2147483647 run scoreboard players set @s 02.SelectBonusSum.05.FallResistanceSelect 0
    execute unless score @s 02.Bonus.03.Attack matches -2147483648..2147483647 run scoreboard players set @s 02.Bonus.03.Attack 0
    execute unless score @s 02.Bonus.04.Defense matches -2147483648..2147483647 run scoreboard players set @s 02.Bonus.04.Defense 0
    execute unless score @s 02.Bonus.05.FallResistance matches -2147483648..2147483647 run scoreboard players set @s 02.Bonus.05.FallResistance 0

# text data
    data modify storage temp: Text set value {}
    data modify storage temp: Text.Select1 set value {"text":"[選ぶ]","clickEvent":{"action":"run_command","value":"/trigger 02.Trigger set 1"},"color":"gold"}
    data modify storage temp: Text.Select2 set value {"text":"[選ぶ]","clickEvent":{"action":"run_command","value":"/trigger 02.Trigger set 2"},"color":"gold"}
    data modify storage temp: Text.Select3 set value {"text":"[選ぶ]","clickEvent":{"action":"run_command","value":"/trigger 02.Trigger set 3"},"color":"gold"}
    data modify storage temp: Text.Select4 set value {"text":"[選ぶ]","clickEvent":{"action":"run_command","value":"/trigger 02.Trigger set 4"},"color":"gold"}
    data modify storage temp: Text.Select5 set value {"text":"[選ぶ]","clickEvent":{"action":"run_command","value":"/trigger 02.Trigger set 5"},"color":"gold"}
    data modify storage temp: Text.SelectMax1 set value '[{"text":"\\u0002","font":"space"}, {"text":"[MAX]","clickEvent":{"action":"run_command","value":"/trigger 02.Trigger set 101"},"color":"gold","font":"default"}]'
    data modify storage temp: Text.SelectMax2 set value '[{"text":"\\u0002","font":"space"}, {"text":"[MAX]","clickEvent":{"action":"run_command","value":"/trigger 02.Trigger set 102"},"color":"gold","font":"default"}]'
    data modify storage temp: Text.SelectMax3 set value '[{"text":"\\u0002","font":"space"}, {"text":"[MAX]","clickEvent":{"action":"run_command","value":"/trigger 02.Trigger set 103"},"color":"gold","font":"default"}]'
    data modify storage temp: Text.SelectMax4 set value '[{"text":"\\u0002","font":"space"}, {"text":"[MAX]","clickEvent":{"action":"run_command","value":"/trigger 02.Trigger set 104"},"color":"gold","font":"default"}]'
    data modify storage temp: Text.SelectMax5 set value '[{"text":"\\u0002","font":"space"}, {"text":"[MAX]","clickEvent":{"action":"run_command","value":"/trigger 02.Trigger set 105"},"color":"gold","font":"default"}]'
    data modify storage temp: Text.Value1 set value {"text": "2", "color": "aqua"}
    data modify storage temp: Text.Value2 set value {"text": "4", "color": "aqua"}
    data modify storage temp: Text.Value3 set value [{"text": "1", "color": "aqua"},{"text": "%", "color": "white"}]
    data modify storage temp: Text.Value4 set value [{"text": "1", "color": "aqua"},{"text": "%", "color": "white"}]
    data modify storage temp: Text.Value5 set value [{"text": "5", "color": "aqua"},{"text": "%", "color": "white"}]
    data modify storage temp: Text.MaxValue1 set value {"text": "60", "color": "aqua"}
    data modify storage temp: Text.MaxValue2 set value {"text": "120", "color": "aqua"}
    data modify storage temp: Text.MaxValue3 set value {"text": "30", "color": "aqua"}
    data modify storage temp: Text.MaxValue4 set value {"text": "30", "color": "aqua"}
    data modify storage temp: Text.MaxValue5 set value {"text": "50", "color": "aqua"}
    data modify storage temp: Text.Name1 set value {"text": "体力", "color": "white"}
    data modify storage temp: Text.Name2 set value {"text": "魔力", "color": "white"}
    data modify storage temp: Text.Name3 set value {"text": "攻撃", "color": "white"}
    data modify storage temp: Text.Name4 set value {"text": "防御", "color": "white"}
    data modify storage temp: Text.Name5 set value {"text": "落下耐性", "color": "white"}
    data modify storage temp: Text.Score1 set value {"score": {"name": "@s","objective": "02.SelectBonusSum.01.MaxHealthSelect"},"color": "aqua"}
    data modify storage temp: Text.Score2 set value {"score": {"name": "@s","objective": "02.SelectCount.02.MaxMP"},"color": "aqua"}
    data modify storage temp: Text.Score3 set value {"score": {"name": "@s","objective": "02.SelectCount.03.Attack"},"color": "aqua"}
    data modify storage temp: Text.Score4 set value {"score": {"name": "@s","objective": "02.SelectCount.04.Defense"},"color": "aqua"}
    data modify storage temp: Text.Score5 set value {"score": {"name": "@s","objective": "02.SelectBonusSum.05.FallResistanceSelect"},"color": "aqua"}

    # 選択回数が最大取得数以上なら選択不能になる
        execute if score @s 02.SelectCount.01.MaxHealth >= $1 02.MaxUse run data modify storage temp: Text.Select1 set value {"text":"[選ぶ]","color":"gray"}
        execute if score @s 02.SelectCount.01.MaxHealth >= $1 02.MaxUse run data modify storage temp: Text.SelectMax1 set value {"text": ""}
        execute if score @s 02.SelectCount.01.MaxHealth >= $1 02.MaxUse run data modify storage temp: Text.Value1 set value {"text": "0", "color": "yellow"}
        execute if score @s 02.SelectCount.01.MaxHealth >= $1 02.MaxUse run data modify storage temp: Text.Score4."color" set value "yellow"
        execute if score @s 02.SelectCount.02.MaxMP >= $2 02.MaxUse run data modify storage temp: Text.Select2 set value {"text":"[選ぶ]","color":"gray"}
        execute if score @s 02.SelectCount.02.MaxMP >= $2 02.MaxUse run data modify storage temp: Text.SelectMax2 set value {"text": ""}
        execute if score @s 02.SelectCount.02.MaxMP >= $2 02.MaxUse run data modify storage temp: Text.Value2 set value {"text": "0", "color": "yellow"}
        execute if score @s 02.SelectCount.02.MaxMP >= $2 02.MaxUse run data modify storage temp: Text.Score4."color" set value "yellow"
        execute if score @s 02.SelectCount.03.Attack >= $3 02.MaxUse run data modify storage temp: Text.Select3 set value {"text":"[選ぶ]","color":"gray"}
        execute if score @s 02.SelectCount.03.Attack >= $3 02.MaxUse run data modify storage temp: Text.SelectMax3 set value {"text": ""}
        execute if score @s 02.SelectCount.03.Attack >= $3 02.MaxUse run data modify storage temp: Text.Value3 set value [{"text": "0", "color": "yellow"},{"text": "%", "color": "white"}]
        execute if score @s 02.SelectCount.03.Attack >= $3 02.MaxUse run data modify storage temp: Text.Score4."color" set value "yellow"
        execute if score @s 02.SelectCount.04.Defense >= $4 02.MaxUse run data modify storage temp: Text.Select4 set value {"text":"[選ぶ]","color":"gray"}
        execute if score @s 02.SelectCount.04.Defense >= $4 02.MaxUse run data modify storage temp: Text.SelectMax4 set value {"text": ""}
        execute if score @s 02.SelectCount.04.Defense >= $4 02.MaxUse run data modify storage temp: Text.Value4 set value [{"text": "0", "color": "yellow"},{"text": "%", "color": "white"}]
        execute if score @s 02.SelectCount.04.Defense >= $4 02.MaxUse run data modify storage temp: Text.Score4."color" set value "yellow"
        execute if score @s 02.SelectCount.05.FallResistance >= $5 02.MaxUse run data modify storage temp: Text.Select5 set value {"text":"[選ぶ]","color":"gray"}
        execute if score @s 02.SelectCount.05.FallResistance >= $5 02.MaxUse run data modify storage temp: Text.SelectMax5 set value {"text": ""}
        execute if score @s 02.SelectCount.05.FallResistance >= $5 02.MaxUse run data modify storage temp: Text.Value5 set value [{"text": "0", "color": "yellow"},{"text": "%", "color": "white"}]
        execute if score @s 02.SelectCount.05.FallResistance >= $5 02.MaxUse run data modify storage temp: Text.Score5."color" set value "yellow"
    # 選択回数が1以下ならMAXは表示しない
        execute if score $Remain Temporary matches ..1 run data modify storage temp: Text.SelectMax1 set value {"text": ""}
        execute if score $Remain Temporary matches ..1 run data modify storage temp: Text.SelectMax2 set value {"text": ""}
        execute if score $Remain Temporary matches ..1 run data modify storage temp: Text.SelectMax3 set value {"text": ""}
        execute if score $Remain Temporary matches ..1 run data modify storage temp: Text.SelectMax4 set value {"text": ""}
        execute if score $Remain Temporary matches ..1 run data modify storage temp: Text.SelectMax5 set value {"text": ""}

    # 実際のメッセージ
        data modify storage temp: Text.Message1 set value '{"translate": "%1$s%2$s §f%3$s%4$s+%5$s §f(合計%4$s+%6$s%4$s/%4$s§f%7$s)", "with": [{"storage":"temp:","nbt":"Text.Select1","interpret": true},{"storage":"temp:","nbt":"Text.SelectMax1","interpret": true},{"storage":"temp:","nbt":"Text.Name1","interpret": true},{"text":"\\u0002","font":"space"},{"storage":"temp:","nbt":"Text.Value1","interpret": true},{"storage":"temp:","nbt":"Text.Score1","interpret": true},{"storage":"temp:","nbt":"Text.MaxValue1","interpret": true}]}'
        data modify storage temp: Text.Message2 set value '{"translate": "%1$s%2$s §f%3$s%4$s+%5$s §f(合計%4$s+%6$s%4$s/%4$s§f%7$s)", "with": [{"storage":"temp:","nbt":"Text.Select2","interpret": true},{"storage":"temp:","nbt":"Text.SelectMax2","interpret": true},{"storage":"temp:","nbt":"Text.Name2","interpret": true},{"text":"\\u0002","font":"space"},{"storage":"temp:","nbt":"Text.Value2","interpret": true},{"storage":"temp:","nbt":"Text.Score2","interpret": true},{"storage":"temp:","nbt":"Text.MaxValue2","interpret": true}]}'
        data modify storage temp: Text.Message3 set value '{"translate": "%1$s%2$s §f%3$s%4$s+%5$s §f(合計%4$s+%6$s%4$s/%4$s§f%7$s)", "with": [{"storage":"temp:","nbt":"Text.Select3","interpret": true},{"storage":"temp:","nbt":"Text.SelectMax3","interpret": true},{"storage":"temp:","nbt":"Text.Name3","interpret": true},{"text":"\\u0002","font":"space"},{"storage":"temp:","nbt":"Text.Value3","interpret": true},{"storage":"temp:","nbt":"Text.Score3","interpret": true},{"storage":"temp:","nbt":"Text.MaxValue3","interpret": true}]}'
        data modify storage temp: Text.Message4 set value '{"translate": "%1$s%2$s §f%3$s%4$s+%5$s §f(合計%4$s+%6$s%4$s/%4$s§f%7$s)", "with": [{"storage":"temp:","nbt":"Text.Select4","interpret": true},{"storage":"temp:","nbt":"Text.SelectMax4","interpret": true},{"storage":"temp:","nbt":"Text.Name4","interpret": true},{"text":"\\u0002","font":"space"},{"storage":"temp:","nbt":"Text.Value4","interpret": true},{"storage":"temp:","nbt":"Text.Score4","interpret": true},{"storage":"temp:","nbt":"Text.MaxValue4","interpret": true}]}'
        data modify storage temp: Text.Message5 set value '{"translate": "%1$s%2$s §f%3$s%4$s+%5$s §f(合計%4$s+%6$s%4$s/%4$s§f%7$s)", "with": [{"storage":"temp:","nbt":"Text.Select5","interpret": true},{"storage":"temp:","nbt":"Text.SelectMax5","interpret": true},{"storage":"temp:","nbt":"Text.Name5","interpret": true},{"text":"\\u0002","font":"space"},{"storage":"temp:","nbt":"Text.Value5","interpret": true},{"storage":"temp:","nbt":"Text.Score5","interpret": true},{"storage":"temp:","nbt":"Text.MaxValue5","interpret": true}]}'

    # tellraw
        tellraw @s {"translate": "%1$s\n%2$s\n%3$s\n%4$s\n%5$s", "with": [{"storage":"temp:","nbt":"Text.Message1","interpret": true}, {"storage":"temp:","nbt":"Text.Message2","interpret": true}, {"storage":"temp:","nbt":"Text.Message3","interpret": true}, {"storage":"temp:","nbt":"Text.Message4","interpret": true}, {"storage":"temp:","nbt":"Text.Message5","interpret": true}]}

    # execute if score @s 02.SelectCount.01.MaxHealth matches 30.. run tellraw @s [{"text":"[選ぶ]","color":"gray"},{"text":" 体力","color":"white"},{"text":"\u0002","font":"space"},{"text":"+","color":"white"},{"text":"0","color":"yellow"},{"text":" (合計","color":"white"},{"text":"\u0002","font":"space"},{"text":"+","color":"white"},{"score":{"name": "@s","objective":"02.SelectBonusSum.01.MaxHealthSelect"},"color":"yellow"},{"text":"\u0002","font":"space"},{"text":"/","color":"white"},{"text":"\u0002","font":"space"},{"text":"60)","color":"white"}]
    # execute if score @s 02.SelectCount.01.MaxHealth matches ..29 run tellraw @s [{"text":"[選ぶ]","clickEvent":{"action":"run_command","value":"/trigger 02.Trigger set 1"},"color":"gold"},{"text":" 体力","color":"white"},{"text":"\u0002","font":"space"},{"text":"+","color":"white"},{"text":"2","color":"aqua"},{"text":" (合計","color":"white"},{"text":"\u0002","font":"space"},{"text":"+","color":"white"},{"score":{"name": "@s","objective":"02.SelectBonusSum.01.MaxHealthSelect"},"color":"aqua"},{"text":"\u0002","font":"space"},{"text":"/","color":"white"},{"text":"\u0002","font":"space"},{"text":"60)","color":"white"}]
    # execute if score @s 02.SelectCount.02.MaxMP matches 30.. run tellraw @s [{"text":"[選ぶ]","color":"gray"},{"text":" 魔力","color":"white"},{"text":"\u0002","font":"space"},{"text":"+","color":"white"},{"text":"0","color":"yellow"},{"text":" (合計","color":"white"},{"text":"\u0002","font":"space"},{"text":"+","color":"white"},{"score":{"name": "@s","objective":"02.SelectBonusSum.02.MaxMPSelect"},"color":"yellow"},{"text":"\u0002","font":"space"},{"text":"/","color":"white"},{"text":"\u0002","font":"space"},{"text":"120)","color":"white"}]
    # execute if score @s 02.SelectCount.02.MaxMP matches ..29 run tellraw @s [{"text":"[選ぶ]","clickEvent":{"action":"run_command","value":"/trigger 02.Trigger set 2"},"color":"gold"},{"text":" 魔力","color":"white"},{"text":"\u0002","font":"space"},{"text":"+","color":"white"},{"text":"4","color":"aqua"},{"text":" (合計","color":"white"},{"text":"\u0002","font":"space"},{"text":"+","color":"white"},{"score":{"name": "@s","objective":"02.SelectBonusSum.02.MaxMPSelect"},"color":"aqua"},{"text":"\u0002","font":"space"},{"text":"/","color":"white"},{"text":"\u0002","font":"space"},{"text":"120)","color":"white"}]
    # execute if score @s 02.SelectCount.03.Attack matches 30.. run tellraw @s [{"text":"[選ぶ]","color":"gray"},{"text":" 攻撃","color":"white"},{"text":"\u0002","font":"space"},{"text":"+","color":"white"},{"text":"0","color":"yellow"},{"text":"% (合計","color":"white"},{"text":"\u0002","font":"space"},{"text":"+","color":"white"},{"score":{"name": "@s","objective":"02.Bonus.03.Attack"},"color":"yellow"},{"text":"\u0002","font":"space"},{"text":"/","color":"white"},{"text":"\u0002","font":"space"},{"text":"30%)","color":"white"}]
    # execute if score @s 02.SelectCount.03.Attack matches ..29 run tellraw @s [{"text":"[選ぶ]","clickEvent":{"action":"run_command","value":"/trigger 02.Trigger set 3"},"color":"gold"},{"text":" 攻撃","color":"white"},{"text":"\u0002","font":"space"},{"text":"+","color":"white"},{"text":"1","color":"aqua"},{"text":"% (合計","color":"white"},{"text":"\u0002","font":"space"},{"text":"+","color":"white"},{"score":{"name": "@s","objective":"02.Bonus.03.Attack"},"color":"aqua"},{"text":"\u0002","font":"space"},{"text":"/","color":"white"},{"text":"\u0002","font":"space"},{"text":"30%)","color":"white"}]
    # execute if score @s 02.SelectCount.04.Defense matches 30.. run tellraw @s [{"text":"[選ぶ]","color":"gray"},{"text":" 防御","color":"white"},{"text":"\u0002","font":"space"},{"text":"+","color":"white"},{"text":"0","color":"yellow"},{"text":"% (合計","color":"white"},{"text":"\u0002","font":"space"},{"text":"+","color":"white"},{"score":{"name": "@s","objective":"02.Bonus.04.Defense"},"color":"yellow"},{"text":"\u0002","font":"space"},{"text":"/","color":"white"},{"text":"\u0002","font":"space"},{"text":"30%)","color":"white"}]
    # execute if score @s 02.SelectCount.04.Defense matches ..29 run tellraw @s [{"text":"[選ぶ]","clickEvent":{"action":"run_command","value":"/trigger 02.Trigger set 4"},"color":"gold"},{"text":" 防御","color":"white"},{"text":"\u0002","font":"space"},{"text":"+","color":"white"},{"text":"1","color":"aqua"},{"text":"% (合計","color":"white"},{"text":"\u0002","font":"space"},{"text":"+","color":"white"},{"score":{"name": "@s","objective":"02.Bonus.04.Defense"},"color":"aqua"},{"text":"\u0002","font":"space"},{"text":"/","color":"white"},{"text":"\u0002","font":"space"},{"text":"30%)","color":"white"}]

# reset
    data remove storage temp: Text
    scoreboard players reset $Remain Temporary

# リスナー
    schedule function asset:artifact/0002.blessing/trigger/listener 1t
