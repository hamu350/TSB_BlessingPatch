#> api:entity/player/absorption/core/modifier.m
# BlsPatch
# @input args
#   Multiply: double
# @within function api:entity/player/absorption/add

$execute store result storage api: Argument.Amount double $(Multiply) run data get storage api: Argument.Amount 100
