#macro view view_camera[0]
camera_set_view_size(view,view_width,view_height);

if(instance_exists(o_player)){	
	var _x = clamp(o_player.x - (view_width/2) - o_player.sprite_width/2 ,0,room_width-view_width)
	var _y = clamp(o_player.y - (view_height/2) - view_height/3,0,room_height-view_height)
}



camera_set_view_pos(view,_x,_y)