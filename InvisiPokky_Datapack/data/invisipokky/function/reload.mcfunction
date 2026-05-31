








# ストレージの中身がない場合の処理
    execute unless data storage invisipokky:game game_state run function invisipokky:init/storage

# スコアの作成
    function invisipokky:init/scoreboard

# 実行完了メッセージ
    tellraw @a ["",{text:"[System] Reloaded!!!"}]