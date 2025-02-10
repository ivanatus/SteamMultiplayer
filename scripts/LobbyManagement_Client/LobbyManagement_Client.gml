
///@self Client
function sync_players(_new_list){
	var _steamIDs = [];
	for(var i = 0; i < array_length(player_list); i++) array_push(_steamIDs, player_list[i].steam_id);
	
	for(var i = 0; i < array_length(_new_list); i++)
	{
		var _new_steam_id = _new_list[i].steam_id;
		if(!array_contains(_steamIDs, _new_steam_id))
		{
			var _inst = client_player_spawn_at_pos(_new_list[i]);
			_new_list[i].character = _inst;
			array_push(player_list, _new_list[i]);
		}
		else
		{
			for(var k = 0; k < array_length(player_list); k++)
			{
				if(player_list[k].steam_id == _new_steam_id)
				{
					player_list[k].startPos = _new_list[i].startPos;
					player_list[k].lobbyMemberID = _new_list[i].lobbyMemberID;
					if(player_list[i].character == undefined and player_list[k].steam_id != _new_steam_id)
					{
						var _inst = client_player_spawn_at_pos(player_list[k]);
						player_list[k].character = _inst;
					}
				}
			}
		}
	}
}

///@self Client
function client_player_spawn_at_pos(_player_info){
	var _layer = layer_get_id("Instances");
	var _name = _player_info.steam_name;
	var _steam_id = _player_info.steam_id;
	var _num = _player_info.lobbyMemberID;
	var _loc = _player_info.startPos;
	var _inst = instance_create_layer(_loc.x, _loc.y, _layer, obj_Player, {
		steamName: _name,
		steamID: _steam_id,
		lobbyMemberID: _num
	});
	
	return _inst;
}