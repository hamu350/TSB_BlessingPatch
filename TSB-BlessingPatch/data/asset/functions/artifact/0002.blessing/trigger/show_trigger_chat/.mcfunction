#> asset:artifact/0002.blessing/trigger/show_trigger_chat/
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

# ループ処理
    data modify storage bls_patch: Loop set from storage bls_patch: ID
    function asset:artifact/0002.blessing/trigger/show_trigger_chat/loop

# リセット
    scoreboard players reset $Remain Temporary
    data remove storage bls_patch: Loop

# リスナー
    schedule function asset:artifact/0002.blessing/trigger/listener 1t
