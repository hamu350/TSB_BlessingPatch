#> bls_patch:update/player
#
# 
#
# @within function bls_patch:load

# バージョンを設定
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].BlsPatch.Version set value 1

# 祝福をリセット
    # score reset
    scoreboard players set @s 02.UseCount 0

    # storage reset
        data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].BlsPatch.SelectCount set from storage bls_patch: Reset
        data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].BlsPatch.Bonus set from storage bls_patch: Reset

    # status reset loop
        data modify storage bls_patch: Loop set from storage bls_patch: All
        function bls_patch:blessing_reset/loop

    # 再取得はrejoin_processで自動的に行われる
        # execute if score @s 02.UseCount < $BlessingUseCount Global run function asset:artifact/0002.blessing/trigger/show_trigger_chat/

# メッセージ
    tellraw @s [{"text": "[TSB Blessing Patch]", "color":"gold"},{"text":"\nアップデートを検知したため、能力ボーナスをリセットしました。", "color": "white"}]
