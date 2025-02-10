// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function grabSpawnPoint(_player){
	var _spawn_point = instance_find(obj_SpawnPoint, _player);
	if(_spawn_point == noone) return {x: 0, y: 0};
	
	return {x: _spawn_point.x, y: _spawn_point.y};
}