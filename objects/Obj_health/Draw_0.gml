/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

draw_set_font(dotFont)
var cam_x = camera_get_view_x(view_camera[0])
var cam_y = camera_get_view_y(view_camera[0])

draw_sprite_part(spr_heart,0,0,0,210*(global.health/100),210,cam_x+1088,cam_y-60)

if(global.health==0)
{
	is_on=true;
	global.isGameEnd=1;
}

if(global.isGameEnd)
{
	var curX = camera_get_view_x(view_camera[0]);
	var curY = camera_get_view_y(view_camera[0]);
	var success_exit=""
	success_exit+="당신의 점수는 "
	success_exit+=string(global.score)
	success_exit+="입니다."
	
	if(is_on&&global.isGameEnd&&dialog_Timer>0){
		draw_sprite(spr_dialog,0,curX+190,curY+90);
		draw_text(curX+230, curY+120,success_exit)	
		dialog_Timer--;
	}
	
	if(global.isGameEnd&&dialog_Timer==0){
		game_end()
	}
}