#> asset:artifact/0002.blessing/trigger/show_trigger_chat/output.m
# @input args
#   ID: string
# @within function asset:artifact/0002.blessing/trigger/show_trigger_chat/loop

# Text Data
    # Args
    $data modify storage bls_patch: Text set value {\
        Select: {"text":"[選ぶ]","clickEvent":{"action":"run_command","value":"/trigger 02.Trigger set $(ID)"},"color":"gold"},\
        SelectMax: [{"text":" "}, {"text":"[MAX]","clickEvent":{"action":"run_command","value":"/trigger 02.Trigger set 1$(ID)"},"color":"gold"}],\
        Value: {"storage": "bls_patch:", "nbt": "Temporary.Blessing.Value", "color": "aqua"},\
        ValueSuffix: {"storage": "bls_patch:", "nbt": "Temporary.Blessing.ValueSuffix", "color": "white"},\
        MaxValue: {"storage": "bls_patch:", "nbt": "Temporary.Blessing.MaxValue", "color": "aqua"},\
        Name: {"storage": "bls_patch:", "nbt": "Temporary.Blessing.Name", "color": "white"},\
        Bonus: {"score": {"name": "$Bonus","objective": "Temporary"},"color": "aqua"},\
    }

    # 選択回数が最大取得数以上なら選択不能になる
        execute if score $SelectCount Temporary >= $MaxUse Temporary run data modify storage bls_patch: Text.$(ID) merge value {\
            Select: {"text":"[選ぶ]","color":"gray"},\
            SelectMax: {"text": ""},\
            Value: {"text": "0", "color": "yellow"},\
            Bonus: {"score": {"name": "$Bonus","objective": "Temporary"},"color": "yellow"},\
        }
    # 祝福残数が1以下ならMAXは表示しない
        execute if score $Remain Temporary matches ..1 run data modify storage bls_patch: Text.SelectMax set value {"text": ""}

    # tellraw
        tellraw @s {\
            "translate": "%2$s §f%4$s%1$s+%5$s%6$s §f(合計%1$s+%7$s%1$s/%1$s§f%8$s)%3$s",\
            "with": [\
                {"text":"\u0002","font":"space"},\
                {"storage":"bls_patch:","nbt":"Text.Select","interpret": true},\
                {"storage":"bls_patch:","nbt":"Text.SelectMax","interpret": true},\
                {"storage":"bls_patch:","nbt":"Text.Name","interpret": true},\
                {"storage":"bls_patch:","nbt":"Text.Value","interpret": true},\
                {"storage":"bls_patch:","nbt":"Text.ValueSuffix","interpret": true},\
                {"storage":"bls_patch:","nbt":"Text.Bonus","interpret": true},\
                {"storage":"bls_patch:","nbt":"Text.MaxValue","interpret": true}\
            ]\
        }

# reset
    data remove storage bls_patch: Text
