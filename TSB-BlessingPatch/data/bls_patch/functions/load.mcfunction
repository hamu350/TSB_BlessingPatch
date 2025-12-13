#> bls_patch:load
#
# 
#
# @within tag/function minecraft:load

# first load
    execute unless data storage bls_patch: Blessing run function bls_patch:load_once

# update
    execute unless data storage bls_patch: {Version:1} run function bls_patch:update/
