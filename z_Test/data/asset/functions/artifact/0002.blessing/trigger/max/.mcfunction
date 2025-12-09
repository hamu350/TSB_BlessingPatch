say #> asset:artifact/0002.blessing/trigger/max/
#
# 
#
# @within function asset:artifact/0002.blessing/trigger/on_trigger

# Args.ID = f"{ID-100:>2}"
# Args.UpdatePath = bls_patch: Blessing.{ID}.UpdatePath
    execute store result storage bls_patch: Args.Trigger int 1 run scoreboard players remove @s 02.Trigger 100
    function asset:artifact/0002.blessing/trigger/get_id.m with storage bls_patch: Args

execute if data storage bls_patch: Args.ID if data storage bls_patch: Args.UpdatePath run function asset:artifact/0002.blessing/trigger/max/m with storage bls_patch: Args
data modify storage temp: Args set from storage bls_patch: Args
data remove storage bls_patch: Args
