if (sprite_index == door_opening) {
    room_goto(target_room);  
    Obj_player.x = targetX;
    Obj_player.y = targetY;

    Obj_camera.snapToPlayer = true;
}