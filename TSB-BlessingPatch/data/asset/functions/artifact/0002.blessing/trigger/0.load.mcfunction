#> asset:artifact/0002.blessing/trigger/0.load
#
# 神器に利用するスコアボード等の初期化処理
#
# @within tag/function asset:artifact/load

#> 定義類はここに
# @within function asset:artifact/0002.blessing/trigger/**
    scoreboard objectives add 02.Trigger trigger
    scoreboard objectives add 02.UseCount dummy

# 初期化
    scoreboard players set $BlessingUseCount Global 0
    scoreboard players set $BonusHealth Global 0
    scoreboard players set $BonusMP Global 0

# register
    function asset:artifact/0002.blessing/trigger/register
