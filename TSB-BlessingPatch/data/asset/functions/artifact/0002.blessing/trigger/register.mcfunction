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
# 06: MPRegen
# 07: Heal
# 08: ReceiveHeal
# 09: PysicalAttack
# 10: MagicAttack
# 11: PysicalDefense
# 12: MagicDefense
# 13: Speed

# ID(表示順)
    # data modify storage bls_patch: ID set value ["01", "02", "03", "04"]
    # data modify storage bls_patch: SecondID set value ["09", "10", "11", "12", "05", "13"]
    # data modify storage bls_patch: ThirdID set value ["07", "08", "06", "14", "15", "16"]
    data modify storage bls_patch: ID set value ["01", "02", "03", "04"]
    data modify storage bls_patch: SecondID set value ["05", "06", "07", "08"]
    data modify storage bls_patch: ThirdID set value ["13", "14", "15", "16"]
    data modify storage bls_patch: All set from storage bls_patch: ID
    data modify storage bls_patch: All append from storage bls_patch: SecondID[]
    data modify storage bls_patch: All append from storage bls_patch: ThirdID[]

# Bonusの総数+1([ID]で取得できるように1つずらす)
    # 物魔消したので調整
    data modify storage bls_patch: Reset set value ["", "", "", ""]
    data modify storage bls_patch: Reset append from storage bls_patch: All[]
    data modify storage bls_patch: Reset[] set value 0
    data modify storage bls_patch: Reset prepend value -1

# Name: 名前
# Update Path: ステータス更新用のPath
# Value: 増加量
# Value Suffix: 接尾詞
# MaxValue: 最大値
# MaxUse: 最大選択数

# 01: MaxHealth
    data modify storage bls_patch: Blessing.01.Name set value '"体力"'
    data modify storage bls_patch: Blessing.01.UpdatePath set value "api:modifier/max_health/update_bonus"
    data modify storage bls_patch: Blessing.01.Value set value 2
    data modify storage bls_patch: Blessing.01.ValueSuffix set value ""
    data modify storage bls_patch: Blessing.01.MaxValue set value 60
    data modify storage bls_patch: Blessing.01.MaxUse set value 30

# 02: MaxMP
    data modify storage bls_patch: Blessing.02.Name set value '"魔力"'
    data modify storage bls_patch: Blessing.02.UpdatePath set value "api:modifier/max_mp/update_bonus"
    data modify storage bls_patch: Blessing.02.Value set value 4
    data modify storage bls_patch: Blessing.02.ValueSuffix set value ""
    data modify storage bls_patch: Blessing.02.MaxValue set value 120
    data modify storage bls_patch: Blessing.02.MaxUse set value 30

# 03: Attack
    data modify storage bls_patch: Blessing.03.Name set value '"攻撃"'
    data modify storage bls_patch: Blessing.03.UpdatePath set value "api:modifier/attack/base/update_bonus"
    data modify storage bls_patch: Blessing.03.Value set value 1
    data modify storage bls_patch: Blessing.03.ValueSuffix set value "%"
    data modify storage bls_patch: Blessing.03.MaxValue set value 30
    data modify storage bls_patch: Blessing.03.MaxUse set value 30

# 04: Defense
    data modify storage bls_patch: Blessing.04.Name set value '"防御"'
    data modify storage bls_patch: Blessing.04.UpdatePath set value "api:modifier/defense/base/update_bonus"
    data modify storage bls_patch: Blessing.04.Value set value 1
    data modify storage bls_patch: Blessing.04.ValueSuffix set value "%"
    data modify storage bls_patch: Blessing.04.MaxValue set value 30
    data modify storage bls_patch: Blessing.04.MaxUse set value 30

# 05: FallResistance
    data modify storage bls_patch: Blessing.05.Name set value '"落下耐性"'
    data modify storage bls_patch: Blessing.05.UpdatePath set value "api:modifier/fall_resistance/update_bonus"
    data modify storage bls_patch: Blessing.05.Value set value 5
    data modify storage bls_patch: Blessing.05.ValueSuffix set value "%"
    data modify storage bls_patch: Blessing.05.MaxValue set value 50
    data modify storage bls_patch: Blessing.05.MaxUse set value 10

# 06: MPRegen
    data modify storage bls_patch: Blessing.06.Name set value '"MP回復量"'
    data modify storage bls_patch: Blessing.06.UpdatePath set value "api:modifier/mp_regen/update_bonus"
    data modify storage bls_patch: Blessing.06.Value set value 1
    data modify storage bls_patch: Blessing.06.ValueSuffix set value "%"
    data modify storage bls_patch: Blessing.06.MaxValue set value 30
    data modify storage bls_patch: Blessing.06.MaxUse set value 30

# 07: Heal
    data modify storage bls_patch: Blessing.07.Name set value '"与回復量"'
    data modify storage bls_patch: Blessing.07.UpdatePath set value "api:modifier/heal/update_bonus"
    data modify storage bls_patch: Blessing.07.Value set value 1
    data modify storage bls_patch: Blessing.07.ValueSuffix set value "%"
    data modify storage bls_patch: Blessing.07.MaxValue set value 30
    data modify storage bls_patch: Blessing.07.MaxUse set value 30

# 08: ReceiveHeal
    data modify storage bls_patch: Blessing.08.Name set value '"被回復量"'
    data modify storage bls_patch: Blessing.08.UpdatePath set value "api:modifier/receive_heal/update_bonus"
    data modify storage bls_patch: Blessing.08.Value set value 1
    data modify storage bls_patch: Blessing.08.ValueSuffix set value "%"
    data modify storage bls_patch: Blessing.08.MaxValue set value 30
    data modify storage bls_patch: Blessing.08.MaxUse set value 30

# # 09: Physical Attack
#     data modify storage bls_patch: Blessing.09.Name set value '"物理攻撃"'
#     data modify storage bls_patch: Blessing.09.UpdatePath set value "api:modifier/attack/physical/update_bonus"
#     data modify storage bls_patch: Blessing.09.Value set value 2
#     data modify storage bls_patch: Blessing.09.ValueSuffix set value "%"
#     data modify storage bls_patch: Blessing.09.MaxValue set value 20
#     data modify storage bls_patch: Blessing.09.MaxUse set value 10

# # 10: Magic Attack
#     data modify storage bls_patch: Blessing.10.Name set value '"魔法攻撃"'
#     data modify storage bls_patch: Blessing.10.UpdatePath set value "api:modifier/attack/magic/update_bonus"
#     data modify storage bls_patch: Blessing.10.Value set value 2
#     data modify storage bls_patch: Blessing.10.ValueSuffix set value "%"
#     data modify storage bls_patch: Blessing.10.MaxValue set value 20
#     data modify storage bls_patch: Blessing.10.MaxUse set value 10

# # 11: Physical Attack
#     data modify storage bls_patch: Blessing.11.Name set value '"物理防御"'
#     data modify storage bls_patch: Blessing.11.UpdatePath set value "api:modifier/defense/physical/update_bonus"
#     data modify storage bls_patch: Blessing.11.Value set value 2
#     data modify storage bls_patch: Blessing.11.ValueSuffix set value "%"
#     data modify storage bls_patch: Blessing.11.MaxValue set value 20
#     data modify storage bls_patch: Blessing.11.MaxUse set value 10

# # 12: Magic Attack
#     data modify storage bls_patch: Blessing.12.Name set value '"魔法防御"'
#     data modify storage bls_patch: Blessing.12.UpdatePath set value "api:modifier/defense/magic/update_bonus"
#     data modify storage bls_patch: Blessing.12.Value set value 2
#     data modify storage bls_patch: Blessing.12.ValueSuffix set value "%"
#     data modify storage bls_patch: Blessing.12.MaxValue set value 20
#     data modify storage bls_patch: Blessing.12.MaxUse set value 10

# 13: Speed
    data modify storage bls_patch: Blessing.13.Name set value '"移動速度"'
    data modify storage bls_patch: Blessing.13.UpdatePath set value "bls_patch:modifier/speed/update_bonus"
    data modify storage bls_patch: Blessing.13.Value set value 1
    data modify storage bls_patch: Blessing.13.ValueSuffix set value "%"
    data modify storage bls_patch: Blessing.13.MaxValue set value 30
    data modify storage bls_patch: Blessing.13.MaxUse set value 30

# 14: Absorption
    data modify storage bls_patch: Blessing.14.Name set value '"バリア付与量"'
    data modify storage bls_patch: Blessing.14.UpdatePath set value "bls_patch:modifier/absorption/update_bonus"
    data modify storage bls_patch: Blessing.14.Value set value 3
    data modify storage bls_patch: Blessing.14.ValueSuffix set value "%"
    data modify storage bls_patch: Blessing.14.MaxValue set value 30
    data modify storage bls_patch: Blessing.14.MaxUse set value 10

# 15: BuffDuration
    data modify storage bls_patch: Blessing.15.Name set value '"バフ効果時間延長"'
    data modify storage bls_patch: Blessing.15.UpdatePath set value "bls_patch:modifier/buff_duration/update_bonus"
    data modify storage bls_patch: Blessing.15.Value set value 1
    data modify storage bls_patch: Blessing.15.ValueSuffix set value "%"
    data modify storage bls_patch: Blessing.15.MaxValue set value 20
    data modify storage bls_patch: Blessing.15.MaxUse set value 20

# 16: DebuffDuration
    data modify storage bls_patch: Blessing.16.Name set value '"デバフ効果時間短縮"'
    data modify storage bls_patch: Blessing.16.UpdatePath set value "bls_patch:modifier/debuff_duration/update_bonus"
    data modify storage bls_patch: Blessing.16.Value set value 2
    data modify storage bls_patch: Blessing.16.ValueSuffix set value "%"
    data modify storage bls_patch: Blessing.16.MaxValue set value 40
    data modify storage bls_patch: Blessing.16.MaxUse set value 20
