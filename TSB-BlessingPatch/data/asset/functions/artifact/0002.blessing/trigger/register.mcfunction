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

# ID(表示順)
    data modify storage bls_patch: ID set value ["01", "02", "03", "04", "05", "06"]

# Bonusの総数+1([ID]で取得できるように1つずらす)
    data modify storage bls_patch: Reset set value [-1, 0, 0, 0, 0, 0, 0]

# Name: 名前
# Update Path: ステータス更新用のPath
# Value: 増加量
# Value Suffix: 接尾詞
# MaxValue: 最大値
# MaxUse: 最大選択数

# 01: MaxHealth
    data modify storage bls_patch: Blessing.01.Name set value "体力"
    data modify storage bls_patch: Blessing.01.UpdatePath set value "api:modifier/max_health/update_bonus"
    data modify storage bls_patch: Blessing.01.Value set value 2
    data modify storage bls_patch: Blessing.01.ValueSuffix set value ""
    data modify storage bls_patch: Blessing.01.MaxValue set value 60
    data modify storage bls_patch: Blessing.01.MaxUse set value 30

# 02: MaxMP
    data modify storage bls_patch: Blessing.02.Name set value "魔力"
    data modify storage bls_patch: Blessing.02.UpdatePath set value "api:modifier/max_mp/update_bonus"
    data modify storage bls_patch: Blessing.02.Value set value 4
    data modify storage bls_patch: Blessing.02.ValueSuffix set value ""
    data modify storage bls_patch: Blessing.02.MaxValue set value 120
    data modify storage bls_patch: Blessing.02.MaxUse set value 30

# 03: Attack
    data modify storage bls_patch: Blessing.03.Name set value "攻撃"
    data modify storage bls_patch: Blessing.03.UpdatePath set value "api:modifier/attack/base/update_bonus"
    data modify storage bls_patch: Blessing.03.Value set value 1
    data modify storage bls_patch: Blessing.03.ValueSuffix set value "%"
    data modify storage bls_patch: Blessing.03.MaxValue set value 30
    data modify storage bls_patch: Blessing.03.MaxUse set value 30

# 04: Defense
    data modify storage bls_patch: Blessing.04.Name set value "防御"
    data modify storage bls_patch: Blessing.04.UpdatePath set value "api:modifier/defense/base/update_bonus"
    data modify storage bls_patch: Blessing.04.Value set value 1
    data modify storage bls_patch: Blessing.04.ValueSuffix set value "%"
    data modify storage bls_patch: Blessing.04.MaxValue set value 30
    data modify storage bls_patch: Blessing.04.MaxUse set value 30

# 05: FallResistance
    data modify storage bls_patch: Blessing.05.Name set value "落下耐性"
    data modify storage bls_patch: Blessing.05.UpdatePath set value "api:modifier/fall_resistance/update_bonus"
    data modify storage bls_patch: Blessing.05.Value set value 5
    data modify storage bls_patch: Blessing.05.ValueSuffix set value "%"
    data modify storage bls_patch: Blessing.05.MaxValue set value 50
    data modify storage bls_patch: Blessing.05.MaxUse set value 10

# 06: MPRegen
    data modify storage bls_patch: Blessing.06.Name set value "MP回復量"
    data modify storage bls_patch: Blessing.06.UpdatePath set value "api:modifier/mp_regen/update_bonus"
    data modify storage bls_patch: Blessing.06.Value set value 1
    data modify storage bls_patch: Blessing.06.ValueSuffix set value "%"
    data modify storage bls_patch: Blessing.06.MaxValue set value 10
    data modify storage bls_patch: Blessing.06.MaxUse set value 10

# 07: Heal
    data modify storage bls_patch: Blessing.06.Name set value "与回復量"
    data modify storage bls_patch: Blessing.06.UpdatePath set value "api:modifier/heal/update_bonus"
    data modify storage bls_patch: Blessing.06.Value set value 1
    data modify storage bls_patch: Blessing.06.ValueSuffix set value "%"
    data modify storage bls_patch: Blessing.06.MaxValue set value 10
    data modify storage bls_patch: Blessing.06.MaxUse set value 10
