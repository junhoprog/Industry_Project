if (sprite_index == door_opening) {
	Obj_particle_smoke.alarm[0] = 1;

    room_goto(target_room);  
	Obj_particle_smoke.alarm[1] = 1;
    Obj_player.x = targetX;
    Obj_player.y = targetY;

    Obj_camera.snapToPlayer = true;
}