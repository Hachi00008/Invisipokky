##XPバーを使ったMPの表示
#xpを設定
    xp set @s 129 levels
    execute store result score $points XP_bar run xp query @s points
#経験値に代入する値を求める
    scoreboard players operation $Diff XP_bar = @s Timer_Health
    scoreboard players operation $Diff XP_bar *= #1000 Constant
    scoreboard players operation $Diff XP_bar /= @s Max_Timer_Health
    scoreboard players operation $Diff XP_bar -= $points XP_bar
    scoreboard players operation $Diff XP_bar /= #6 Constant
    scoreboard players operation $points XP_bar += $Diff XP_bar
#スコアの値をxpバーに代入
    xp set @s 0 points
    execute if score $points XP_bar matches 512.. run xp add @s 512 points
    execute if score $points XP_bar matches 512.. run scoreboard players remove $points XP_bar 512
    execute if score $points XP_bar matches 256.. run xp add @s 256 points
    execute if score $points XP_bar matches 256.. run scoreboard players remove $points XP_bar 256
    execute if score $points XP_bar matches 128.. run xp add @s 128 points
    execute if score $points XP_bar matches 128.. run scoreboard players remove $points XP_bar 128
    execute if score $points XP_bar matches 64.. run xp add @s 64 points
    execute if score $points XP_bar matches 64.. run scoreboard players remove $points XP_bar 64
    execute if score $points XP_bar matches 32.. run xp add @s 32 points
    execute if score $points XP_bar matches 32.. run scoreboard players remove $points XP_bar 32
    execute if score $points XP_bar matches 16.. run xp add @s 16 points
    execute if score $points XP_bar matches 16.. run scoreboard players remove $points XP_bar 16
    execute if score $points XP_bar matches 8.. run xp add @s 8 points
    execute if score $points XP_bar matches 8.. run scoreboard players remove $points XP_bar 8
    execute if score $points XP_bar matches 4.. run xp add @s 4 points
    execute if score $points XP_bar matches 4.. run scoreboard players remove $points XP_bar 4
    execute if score $points XP_bar matches 2.. run xp add @s 2 points
    execute if score $points XP_bar matches 2.. run scoreboard players remove $points XP_bar 2
    execute if score $points XP_bar matches 1.. run xp add @s 1 points
    execute if score $points XP_bar matches 1.. run scoreboard players remove $points XP_bar 1
#スコアの値をレベルに代入
    xp set @s 0 levels
    scoreboard players operation $levels XP_bar = @s Timer_Health
    execute if score $levels XP_bar matches 512.. run xp add @s 512 levels
    execute if score $levels XP_bar matches 512.. run scoreboard players remove $levels XP_bar 512
    execute if score $levels XP_bar matches 256.. run xp add @s 256 levels
    execute if score $levels XP_bar matches 256.. run scoreboard players remove $levels XP_bar 256
    execute if score $levels XP_bar matches 128.. run xp add @s 128 levels
    execute if score $levels XP_bar matches 128.. run scoreboard players remove $levels XP_bar 128
    execute if score $levels XP_bar matches 64.. run xp add @s 64 levels
    execute if score $levels XP_bar matches 64.. run scoreboard players remove $levels XP_bar 64
    execute if score $levels XP_bar matches 32.. run xp add @s 32 levels
    execute if score $levels XP_bar matches 32.. run scoreboard players remove $levels XP_bar 32
    execute if score $levels XP_bar matches 16.. run xp add @s 16 levels
    execute if score $levels XP_bar matches 16.. run scoreboard players remove $levels XP_bar 16
    execute if score $levels XP_bar matches 8.. run xp add @s 8 levels
    execute if score $levels XP_bar matches 8.. run scoreboard players remove $levels XP_bar 8
    execute if score $levels XP_bar matches 4.. run xp add @s 4 levels
    execute if score $levels XP_bar matches 4.. run scoreboard players remove $levels XP_bar 4
    execute if score $levels XP_bar matches 2.. run xp add @s 2 levels
    execute if score $levels XP_bar matches 2.. run scoreboard players remove $levels XP_bar 2
    execute if score $levels XP_bar matches 1.. run xp add @s 1 levels
    execute if score $levels XP_bar matches 1.. run scoreboard players remove $levels XP_bar 1
#リセット
    scoreboard players reset $Diff XP_bar
    scoreboard players reset $points XP_bar
    scoreboard players reset $levels XP_bar