








#スコアの増加
    scoreboard players add $count CountDown 1

#スコアごとの処理
    execute if score $count CountDown matches 1 run tellraw @a ["",{text:"[InvisiPokky] ",color:"red"},{text:"10秒後にゲームを開始します...",color:"gray"}]

    execute if score $count CountDown matches 140 run title @a title ["",{text:"3.."}]
    execute if score $count CountDown matches 140 as @a at @s run playsound entity.player.levelup player @s ~ ~ ~ 1.0 2.0
    execute if score $count CountDown matches 160 run title @a title ["",{text:"2.."}]
    execute if score $count CountDown matches 160 as @a at @s run playsound entity.player.levelup player @s ~ ~ ~ 1.0 2.0
    execute if score $count CountDown matches 180 run title @a title ["",{text:"1.."}]
    execute if score $count CountDown matches 180 as @a at @s run playsound entity.player.levelup player @s ~ ~ ~ 1.0 2.0

    execute if score $count CountDown matches 200.. run data modify storage invisipokky:game game_state set value "none"
    execute if score $count CountDown matches 200.. run scoreboard players reset $count CountDown