#> core:handler/join
#
#
#
# @within function
#   core:handler/first_join
#   core:handler/rejoin

# バージョンチェック
    function player_manager:version_check
# データパックチェック
    execute if data storage global {IsProduction:true} run function player_manager:notice_datapack_deficient/
# リソースパックチェック
    function player_manager:notice_resourcepack_different/
# 難易度チェック
    function player_manager:notice_difficulty
# 攻略数の表示
    execute if data storage global {IsProduction:true} if entity @s[tag=TutorialEnded] run function player_manager:show_progress

# BlsPatch
    function bls_patch:join
