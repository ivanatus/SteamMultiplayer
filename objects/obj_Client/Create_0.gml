/// @desc

player_list = [];

steam_id = steam_get_user_steam_id();
steam_name = steam_get_persona_name();

lobbyMemberID = undefined;

character = undefined;

inbuf = buffer_create(16, buffer_grow, 1);

player_list[0] = {
	steam_id: steam_id,
	steam_name: steam_name,
	character: undefined,
	startPos: grabSpawnPoint(0),
	lobbyMemberID: undefined
};  