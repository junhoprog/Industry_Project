/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

if (show_Draw_timer){
	cam_x = camera_get_view_x(view_camera[0])
	cam_y = camera_get_view_y(view_camera[0])

	if (fire_safety_OX[global.index]==false) {
	if (((mouse_x > cam_x+500 && mouse_x < cam_x+600) && (mouse_y > cam_y+170 && mouse_y < cam_y+270)) && mouse_check_button_pressed(mb_left))
			{
				global.score -= 2000;
				is_choice=1
				show_Draw_timer = 0;
				triggered = 1;
				is_done=1
			}
			else if (((mouse_x > cam_x+650 && mouse_x < cam_x+750) && (mouse_y > cam_y+170 && mouse_y < cam_y+270)) && mouse_check_button_pressed(mb_left))
			{
				global.score += 2000;
				is_choice=1
				show_Draw_timer = 0
				triggered = 1;
				is_done=1
			}
	}
	else {
		if (((mouse_x > cam_x+500 && mouse_x < cam_x+600) && (mouse_y > cam_y+170 && mouse_y < cam_y+270)) && mouse_check_button_pressed(mb_left))
			{
				global.score -= 2000;
				is_choice=1
				show_Draw_timer = 0;
				triggered = 1;
				is_done=1
			}
			else if (((mouse_x > cam_x+650 && mouse_x < cam_x+750) && (mouse_y > cam_y+170 && mouse_y < cam_y+270)) && mouse_check_button_pressed(mb_left))
			{
				global.score += 2000;
				is_choice=1
				show_Draw_timer = 0
				triggered = 1;
				is_done=1
			}
	}
}

if (triggered==1 && show_Draw_timer==0 && is_choice==0)
{
	global.score -= 2000;
	is_choice=1
	is_done=1
}

if(is_done==1)
{
	global.index += 1;
	is_done=2
}

	