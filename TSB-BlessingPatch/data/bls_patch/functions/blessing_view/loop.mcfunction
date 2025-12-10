#> bls_patch:blessing_view/loop
#
# 
#
# @within function bls_patch:blessing_view/

# IDを取り出す
    data modify storage bls_patch: Args.ID set from storage bls_patch: Loop[0]

# マクロでデータを取得(流用)
    function asset:artifact/0002.blessing/trigger/show_trigger_chat/data_get.m with storage bls_patch: Args

# tellraw
    tellraw @s {\
        "translate": "%2$s +%3$s%4$s%1$s/%1$s%5$s",\
        "with": [\
            {"text":"\u0002","font":"space"},\
            {"storage": "bls_patch:", "nbt": "Temporary.Blessing.Name", "color": "white", "interpret": true},\
            {"score": {"name": "$Bonus","objective": "Temporary"},"color": "aqua"},\
            {"storage": "bls_patch:", "nbt": "Temporary.Blessing.ValueSuffix", "color": "white", "interpret": true},\
            {"storage": "bls_patch:", "nbt": "Temporary.Blessing.MaxValue", "color": "aqua"}\
        ]\
    }

# reset
    data remove storage bls_patch: Args
    scoreboard players reset $Value Temporary
    scoreboard players reset $MaxValue Temporary
    scoreboard players reset $MaxUse Temporary
    scoreboard players reset $SelectCount Temporary
    scoreboard players reset $Bonus Temporary

# まだ要素が残っていればloop
    data remove storage bls_patch: Loop[0]
    execute if data storage bls_patch: Loop[0] run function bls_patch:blessing_view/loop
