#> asset:artifact/0002.blessing/trigger/0.load
#
# 神器に利用するスコアボード等の初期化処理
#
# @within tag/function asset:artifact/load

#> 定義類はここに
# @within function asset:artifact/0002.blessing/trigger/**
    scoreboard objectives add 02.Trigger trigger
    scoreboard objectives add 02.MaxUse dummy
    scoreboard objectives add 02.UseCount dummy
    scoreboard objectives add 02.SelectCount.01.MaxHealth dummy
    scoreboard objectives add 02.SelectCount.02.MaxMP dummy
    scoreboard objectives add 02.SelectCount.03.Attack dummy
    scoreboard objectives add 02.SelectCount.04.Defense dummy
    scoreboard objectives add 02.SelectCount.05.FallResistance dummy
    scoreboard objectives add 02.SelectBonusSum.01.MaxHealthSelect dummy
    scoreboard objectives add 02.SelectBonusSum.02.MaxMPSelect dummy
    scoreboard objectives add 02.SelectBonusSum.05.FallResistanceSelect dummy
    scoreboard objectives add 02.Bonus.01.Health dummy
    scoreboard objectives add 02.Bonus.02.MP dummy
    scoreboard objectives add 02.Bonus.03.Attack dummy
    scoreboard objectives add 02.Bonus.04.Defense dummy
    scoreboard objectives add 02.Bonus.05.FallResistance dummy

# 初期化
    scoreboard players set $BlessingUseCount Global 0

# 最大値
    scoreboard players set $1 02.MaxUse 30
    scoreboard players set $2 02.MaxUse 30
    scoreboard players set $3 02.MaxUse 30
    scoreboard players set $4 02.MaxUse 30
    scoreboard players set $5 02.MaxUse 10