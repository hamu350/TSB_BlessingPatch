#> asset:artifact/0002.blessing/trigger/on_trigger/
#
#
#
# @within function asset:artifact/0002.blessing/trigger/listener

# エラー値
    execute unless score @s 02.Trigger matches 1..201 run function lib:message/invalid_operation
    execute unless score @s 02.Trigger matches 1..201 run return run function asset:artifact/0002.blessing/trigger/show_trigger_chat/
# Args.ID = f"{Trigger:>2}"
# Args.UpdatePath = bls_patch: Blessing.{ID}.UpdatePath
    execute if score @s 02.Trigger matches 1..99 store result storage bls_patch: Args.Trigger int 1 run scoreboard players get @s 02.Trigger
    execute if score @s 02.Trigger matches 1..99 run function asset:artifact/0002.blessing/trigger/on_trigger/get_id.m with storage bls_patch: Args
# data get
    execute if score @s 02.Trigger matches 1..99 run function asset:artifact/0002.blessing/trigger/on_trigger/data_get.m with storage bls_patch: Args

# マクロでステータス変更
    execute if score @s 02.Trigger matches 1..99 if data storage bls_patch: Args.ID if data storage bls_patch: Args.UpdatePath run function asset:artifact/0002.blessing/trigger/on_trigger/m with storage bls_patch: Args
    execute if score @s 02.Trigger matches 1..99 run data remove storage bls_patch: Args
# 祝福選択数
    execute if score @s 02.Trigger matches 1..99 run scoreboard players add @s 02.UseCount 1

# [MAX] 101~199
    execute if score @s 02.Trigger matches 101..199 run function asset:artifact/0002.blessing/trigger/on_trigger/max/

# リセット
    scoreboard players reset $Value Temporary
    scoreboard players reset $MaxValue Temporary
    scoreboard players reset $MaxUse Temporary
    scoreboard players reset $SelectCount Temporary
    scoreboard players reset $Bonus Temporary

# 200~201 ページ切り替え
    # page1
        execute if score @s 02.Trigger matches 200 run return run function asset:artifact/0002.blessing/trigger/show_trigger_chat/
    # page2
        execute if score @s 02.Trigger matches 201 run return run function asset:artifact/0002.blessing/trigger/show_trigger_chat/second

# リセット
    scoreboard players reset @s 02.Trigger

# 祝福がまだ残っていれば選ばせる
    execute if score @s 02.UseCount < $BlessingUseCount Global run function asset:artifact/0002.blessing/trigger/show_trigger_chat/
