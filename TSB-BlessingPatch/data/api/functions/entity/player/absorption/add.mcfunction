#> api:entity/player/absorption/add
#
# プレイヤーに緩衝体力を付与します
#
# 複数の緩衝体力がある際は、Argument.Priority が大きいものから消費されます。
# Argument.Priority は 0 ~ 10 の整数である必要があります。
#
# また、その UUID の全ての緩衝体力が消費された時、Argument.WipedCallback が呼び出されます。
#
# @input
#   as player
#   storage api:
#       Argument.Amount : double @ 0..
#       Argument.UUID : [int] @ 4
#       Argument.Priority? : int @ 1..10 (default: 0)
#       Argument.WipedCallback? : string (function)
# @patch

# Validation
    execute unless data storage api: Argument.Amount run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません","color":"white"},{"text":" Amount","color":"red"}]
    execute unless data storage api: Argument.Amount run return fail
    execute unless data storage api: Argument.UUID run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません","color":"white"},{"text":" UUID","color":"red"}]
    execute unless data storage api: Argument.UUID run return fail

# Default value
    execute unless data storage api: Argument.Priority run data modify storage api: Argument.Priority set value 0

# BlsPatch: Modifier
    function oh_my_dat:please
    execute store result score $Bonus Temporary run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].BlsPatch.Bonus[14]
    execute store result storage api: Argument.Multiply double 0.0001 run scoreboard players add $Bonus Temporary 100
    function api:entity/player/absorption/core/modifier.m with storage api: Argument
    # Reset
        data remove storage api: Argument.Multiply
        scoreboard players reset $Bonus Temporary

# Call core
    function api:entity/player/absorption/core/upsert.m with storage api: Argument

# Reset
    data remove storage api: Argument.Amount
    data remove storage api: Argument.UUID
    data remove storage api: Argument.Priority
    data remove storage api: Argument.WipedCallback
