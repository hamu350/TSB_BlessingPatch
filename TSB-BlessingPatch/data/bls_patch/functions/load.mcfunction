#> bls_patch:load
#
# 
#
# @within tag/function minecraft:load

# first load
    execute unless data storage bls_patch: Blessing run function bls_patch:load_once

# バージョンを設定(ここだけ変えればいい)
    execute store success storage bls_patch: Update byte 1 run data modify storage bls_patch: Version set value 1
# update
    execute if data storage bls_patch: {Update: 1b} run function bls_patch:update/
    data remove storage bls_patch: Update
