/// @desc
var _player_layer = layer_get_id("Instances");

for(var i = 0; i < array_length(player_list); i++)
{
	var _pos = grabSpawnPoint(i);
	var _inst = instance_create_layer(_pos.x, _pos.y, _player_layer, obj_Player, {
		steamName: player_list[i].steam_name,
		steamID: player_list[i].steam_id,
		lobbyMemberID: i
	});
	player_list[i].character = _inst;
	player_list[i].startPos = _pos;
	if(player_list[i].steam_id == steam_id) character = _inst;
}