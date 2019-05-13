image_alpha = incrementTo(image_alpha,1,0,0.6*o_player._releaseSpeed)

if( image_alpha <= 0 ){
	instance_destroy(id)	
}
