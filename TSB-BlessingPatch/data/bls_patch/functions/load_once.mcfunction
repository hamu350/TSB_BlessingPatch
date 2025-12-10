#> bls_patch:load_once
#
# 
#
# @within function bls_patch:load

# これまでの祝福仕様数を取得
    scoreboard players operation $BlessingUseCount Temporary += $02.MaxHealth 02.SelectCount
    scoreboard players operation $BlessingUseCount Temporary += $02.MaxMP 02.SelectCount
    scoreboard players operation $BlessingUseCount Temporary += $02.Attack 02.SelectCount
    scoreboard players operation $BlessingUseCount Temporary += $02.Defense 02.SelectCount

# ボーナスをリセット
    scoreboard players reset $BonusHealth Global
    scoreboard players reset $BonusMP Global
    scoreboard players reset $BonusAttack Global
    scoreboard players reset $BonusDefense Global

# 初期化処理
    function asset:artifact/0002.blessing/trigger/0.load

# 仕様数、HP、MPを再設定
    scoreboard players operation $BlessingUseCount Global = $BlessingUseCount Temporary
    scoreboard players operation $BonusHealth Global = $BlessingUseCount Temporary
    scoreboard players operation $BonusHealth Global *= $2 Const
    scoreboard players operation $BonusMP Global = $BlessingUseCount Temporary
    scoreboard players operation $BonusMP Global *= $5 Const

# リセット
    scoreboard players reset $BlessingUseCount Temporary
