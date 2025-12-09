#> asset:artifact/0002.blessing/trigger/0.load
#
# 神器に利用するスコアボード等の初期化処理
#
# @within tag/function asset:artifact/load

#> 定義類はここに
# @within function asset:artifact/0002.blessing/trigger/**
    scoreboard objectives add 02.Trigger trigger
    scoreboard objectives add 02.MaxUse dummy
    scoreboard objectives add 02.Value dummy
    scoreboard objectives add 02.MaxValue dummy
    scoreboard objectives add 02.UseCount dummy

    scoreboard objectives add 02.SelectCount.01 dummy
    scoreboard objectives add 02.SelectCount.02 dummy
    scoreboard objectives add 02.SelectCount.03 dummy
    scoreboard objectives add 02.SelectCount.04 dummy
    scoreboard objectives add 02.SelectCount.05 dummy
    scoreboard objectives add 02.Bonus.01 dummy
    scoreboard objectives add 02.Bonus.02 dummy
    scoreboard objectives add 02.Bonus.03 dummy
    scoreboard objectives add 02.Bonus.04 dummy
    scoreboard objectives add 02.Bonus.05 dummy

# 初期化
    scoreboard players set $BlessingUseCount Global 0
    scoreboard players set $BonusHealth Global 0
    scoreboard players set $BonusMP Global 0

# register
    function asset:artifact/0002.blessing/trigger/register
