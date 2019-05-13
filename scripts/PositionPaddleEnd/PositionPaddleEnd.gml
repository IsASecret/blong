var _distanceToOrigin = o_player._originMax - sprite_get_xoffset(o_player.sprite_index)

var _newX = o_player.x + lengthdir_x(_distanceToOrigin,o_player.image_angle)
var _newY = o_player.y + lengthdir_y(_distanceToOrigin,o_player.image_angle)


if(!instance_exists(o_paddleEnd)){
	var _paddleEnd = instance_create_layer(_newX,_newY,"Instances",o_paddleEnd)	
		_paddleEnd.depth = 2
} else {
	o_paddleEnd.x = _newX
	o_paddleEnd.y = _newY
}