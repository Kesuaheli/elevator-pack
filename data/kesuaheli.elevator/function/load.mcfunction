scoreboard objectives add elev_timeout dummy

# set the initial distance for elevators, except it is set already
execute unless score maxValue elev_timeout matches 1.. run scoreboard players set maxValue elev_timeout 100
