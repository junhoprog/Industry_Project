/// Check for Player Interaction
if (!is_open && distance_to_point(mouse_x, mouse_y) < 5 && distance_to_object(Obj_player) < 5){
	is_open = true;
	sprite_index = door_opening;  // 문 열리는 스프라이트로 변경
    image_speed = 1;  // 애니메이션 속도 설정
}
