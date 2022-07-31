GS_BEFORE_START = "0"
GS_PLAYING = "1"
GS_PLAYER_DIED = "2"

local M = {
	game_speed_multiplier = 1,
	game_speed = -240,
	state = GS_BEFORE_START,
	remaining_cheese_time = 0,
	remaining_chilli_time = 0,
	player_has_avocado_shield = false,
	score = 0
}

function M.get_game_speed_multiplier()
	if M.remaining_cheese_time > 0 then
		return 0.5
	end
	return M.game_speed_multiplier
end

function M.update_game_speed_multiplier() 
	M.game_speed_multiplier = 1 + M.score / 100
	if M.game_speed_multiplier > 2 then
		M.game_speed_multiplier = 2
	end
end

return M