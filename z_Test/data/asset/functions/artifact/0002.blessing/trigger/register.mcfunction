#> asset:artifact/0002.blessing/trigger/register
#
# 
#
# @within function asset:artifact/0002.blessing/trigger/0.load

# 01: MaxHealth
# 02: MaxMP
# 03: Attack
# 04: Defense
# 05: FallResistance

# 名前
    data modify storage bls_patch: Blessing.01.Name set value {"text": "体力"}
    data modify storage bls_patch: Blessing.02.Name set value {"text": "魔力"}
    data modify storage bls_patch: Blessing.03.Name set value {"text": "攻撃"}
    data modify storage bls_patch: Blessing.04.Name set value {"text": "防御"}
# Update Path
    data modify storage bls_patch: Blessing.01.UpdatePath set value "api:modifier/max_health/update_bonus"
    data modify storage bls_patch: Blessing.02.UpdatePath set value "api:modifier/max_mp/update_bonus"
    data modify storage bls_patch: Blessing.03.UpdatePath set value "api:modifier/attack/base/update_bonus"
    data modify storage bls_patch: Blessing.04.UpdatePath set value "api:modifier/defense/base/update_bonus"
# Value Suffix
    data modify storage bls_patch: Blessing.01.ValueSuffix set value {"text": ""}
    data modify storage bls_patch: Blessing.02.ValueSuffix set value {"text": ""}
    data modify storage bls_patch: Blessing.03.ValueSuffix set value {"text": "%"}
    data modify storage bls_patch: Blessing.04.ValueSuffix set value {"text": "%"}
# 増加量
    scoreboard players set $Blessing.01 02.Value 2
    scoreboard players set $Blessing.02 02.Value 4
    scoreboard players set $Blessing.03 02.Value 1
    scoreboard players set $Blessing.04 02.Value 1
# 最大選択数
    scoreboard players set $Blessing.01 02.MaxUse 30
    scoreboard players set $Blessing.02 02.MaxUse 30
    scoreboard players set $Blessing.03 02.MaxUse 30
    scoreboard players set $Blessing.04 02.MaxUse 30
# 最大値
    # 01
        scoreboard players operation $Blessing.01 02.MaxValue = $Blessing.01 02.Value
        scoreboard players operation $Blessing.01 02.MaxValue *= $Blessing.01 02.MaxUse
    # 02
        scoreboard players operation $Blessing.02 02.MaxValue = $Blessing.02 02.Value
        scoreboard players operation $Blessing.02 02.MaxValue *= $Blessing.02 02.MaxUse
    # 03
        scoreboard players operation $Blessing.03 02.MaxValue = $Blessing.03 02.Value
        scoreboard players operation $Blessing.03 02.MaxValue *= $Blessing.03 02.MaxUse
    # 04
        scoreboard players operation $Blessing.04 02.MaxValue = $Blessing.04 02.Value
        scoreboard players operation $Blessing.04 02.MaxValue *= $Blessing.04 02.MaxUse


# ボーナスの増やし方
# 上にあるscore等を増やす
# update functionを作る
# ./show_trigger_chat.mcfのscore checkとmacro、tellrawを増やす
# bls_patch:blessing_reset/のUpdateを増やす
# おわり
