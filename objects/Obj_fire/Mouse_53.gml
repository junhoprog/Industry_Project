if (global.hasFireExtinguisher && distance_to_point(mouse_x, mouse_y) < 20 && distance_to_object(Obj_player) < 20) {
	instance_destroy();
	global.score+=1000;

}