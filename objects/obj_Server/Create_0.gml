/// @desc

player_list = [];

steam_id = steam_get_user_steam_id();
steam_name = steam_get_persona_name();

character = undefined;

player_list[0] = {
	steam_id: steam_id,
	steam_name: steam_name,
	//character: grabSpawnPoint(0)
};