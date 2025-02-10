/// @desc Server listen

switch(async_load[? "event_type"])
{
	case "lobby_chat_update":
		var _fromID = async_load[? "user_id"];
		var _fromName = steam_get_user_persona_name(_fromID);
		
		if(async_load[? "change_flags"] and steam_lobby_member_change_entered)
		{
			show_debug_message("Player joined: " + _fromName);
			var _slot = array_length(player_list);
			
			array_push(player_list, {
				steam_id: _fromID,
				steam_name: _fromName,
				character: undefined,
				startPos: grabSpawnPoint(_slot),
				lobbyMemberID: _slot
			});
			send_player_sync(_fromID);
			send_player_spawn(_fromID, _slot); 
		}
}