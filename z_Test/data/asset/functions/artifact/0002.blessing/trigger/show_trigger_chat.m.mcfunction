#> asset:artifact/0002.blessing/trigger/show_trigger_chat.m
# @input args
#   ID: string
# @within function asset:artifact/0002.blessing/trigger/show_trigger_chat

# Text Data
    # Args
    $data modify storage bls_patch: Text.$(ID) set value {\
        Select: {"text":"[選ぶ]","clickEvent":{"action":"run_command","value":"/trigger 02.Trigger set $(ID)"},"color":"gold"},\
        SelectMax: [{"text":" "}, {"text":"[MAX]","clickEvent":{"action":"run_command","value":"/trigger 02.Trigger set 1$(ID)"},"color":"gold"}],\
        Value: {"score": {"name": "$Blessing.$(ID)", "objective": "02.Value"}, "color": "aqua"},\
        ValueSuffix: '{"storage": "bls_patch:", "nbt": "Blessing.$(ID).ValueSuffix", "color": "white", "interpret": true}',\
        MaxValue: {"score": {"name": "$Blessing.$(ID)", "objective": "02.MaxValue"}, "color": "aqua"},\
        Name: '{"storage": "bls_patch:", "nbt": "Blessing.$(ID).Name", "color": "white", "interpret": true}',\
        Bonus: {"score": {"name": "@s","objective": "02.Bonus.$(ID)"},"color": "aqua"},\
    }

    # 選択回数が最大取得数以上なら選択不能になる
        $execute if score @s 02.SelectCount.$(ID) >= $Blessing.$(ID) 02.MaxUse run data modify storage bls_patch: Text.$(ID) merge value {\
            Select: {"text":"[選ぶ]","color":"gray"},\
            SelectMax: {"text": ""},\
            Value: {"text": "0", "color": "yellow"},\
            Bonus: {"score": {"name": "@s","objective": "02.Bonus.$(ID)"},"color": "yellow"},\
        }
    # 祝福残数が1以下ならMAXは表示しない
        $execute if score $Remain Temporary matches ..1 run data modify storage bls_patch: Text.$(ID).SelectMax set value {"text": ""}

    # 実際のメッセージ
        $data modify storage bls_patch: Text.Message.$(ID) set value '{\
            "translate": "%2$s §f%4$s%1$s+%5$s%6$s §f(合計%1$s+%7$s%1$s/%1$s§f%8$s)%3$s",\
            "with": [\
                {"text":"\\u0002","font":"space"},\
                {"storage":"bls_patch:","nbt":"Text.$(ID).Select","interpret": true},\
                {"storage":"bls_patch:","nbt":"Text.$(ID).SelectMax","interpret": true},\
                {"storage":"bls_patch:","nbt":"Text.$(ID).Name","interpret": true},\
                {"storage":"bls_patch:","nbt":"Text.$(ID).Value","interpret": true},\
                {"storage":"bls_patch:","nbt":"Text.$(ID).ValueSuffix","interpret": true},\
                {"storage":"bls_patch:","nbt":"Text.$(ID).Bonus","interpret": true},\
                {"storage":"bls_patch:","nbt":"Text.$(ID).MaxValue","interpret": true}\
            ]\
        }'
