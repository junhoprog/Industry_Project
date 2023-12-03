draw_self()
draw_set_font(dotFont)
if(global.isGameEnd)
{
	layer_force_draw_depth(true,-9999);
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