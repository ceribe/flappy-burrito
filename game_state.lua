GS_BEFORE_START = "0"
GS_PLAYING = "1"
GS_PLAYER_DIED = "2"

local M = {}
M.game_speed_multiplier = 1
M.game_speed = -240
M.state = GS_BEFORE_START
M.remaining_cheese_time = 0
M.remaining_chilli_time = 0
M.player_has_avocado_shield = false
M.score = 0
return M