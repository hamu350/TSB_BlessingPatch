#> asset:artifact/0002.blessing/trigger/0.load
#
# 神器に利用するスコアボード等の初期化処理
#
# @within tag/function asset:artifact/load

#> 定義類はここに
# @within function asset:artifact/0002.blessing/trigger/**
    scoreboard objectives add 02.Trigger trigger
    scoreboard objectives add 02.UseCount dummy
    scoreboard objectives add 02.MaxHealthSelectCount dummy
    scoreboard objectives add 02.MaxMPSelectCount dummy
    scoreboard objectives add 02.AttackSelectCount dummy
    scoreboard objectives add 02.DefenseSelectCount dummy
    scoreboard objectives add 02.MaxHealthSelectBonusSum dummy
    scoreboard objectives add 02.MaxMPSelectBonusSum dummy
    scoreboard objectives add 02.BonusHealth dummy
    scoreboard objectives add 02.BonusMP dummy
    scoreboard objectives add 02.BonusAttack dummy
    scoreboard objectives add 02.BonusDefense dummy

# 初期化
    scoreboard players set $BlessingUseCount Global 0