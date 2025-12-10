#> asset:artifact/0002.blessing/trigger/show_trigger_chat/loop
#
# 
#
# @within function asset:artifact/0002.blessing/trigger/show_trigger_chat/

# IDを取り出す
    data modify storage bls_patch: Args.ID set from storage bls_patch: Loop[0]

# マクロでデータを取得
    function asset:artifact/0002.blessing/trigger/show_trigger_chat/data_get.m with storage bls_patch: Args

# テキストデータを出力
    function asset:artifact/0002.blessing/trigger/show_trigger_chat/output.m with storage bls_patch: Args

# reset
    data remove storage bls_patch: Args
    scoreboard players reset $Value Temporary
    scoreboard players reset $MaxValue Temporary
    scoreboard players reset $MaxUse Temporary
    scoreboard players reset $SelectCount Temporary
    scoreboard players reset $Bonus Temporary

# まだ要素が残っていればloop
    data remove storage bls_patch: Loop[0]
    execute if data storage bls_patch: Loop[0] run function asset:artifact/0002.blessing/trigger/show_trigger_chat/loop
