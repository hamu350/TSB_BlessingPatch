#> asset:artifact/0002.blessing/trigger/on_trigger/data_get.m
#
# @input args
#   ID: str
# @within function asset:artifact/0002.blessing/trigger/show_trigger_chat/

$data modify storage bls_patch: Temporary.Blessing set from storage bls_patch: Blessing.$(ID)

execute store result score $Value Temporary run data get storage bls_patch: Temporary.Blessing.Value
execute store result score $MaxValue Temporary run data get storage bls_patch: Temporary.Blessing.MaxValue
execute store result score $MaxUse Temporary run data get storage bls_patch: Temporary.Blessing.MaxUse

function oh_my_dat:please
$execute store result score $SelectCount Temporary run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].BlsPatch.SelectCount[$(ID)]
$execute store result score $Bonus Temporary run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].BlsPatch.Bonus[$(ID)]
