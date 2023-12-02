/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

if (is_done==0){
var cam_x = camera_get_view_x(view_camera[0]);
var cam_y = camera_get_view_y(view_camera[0]);
draw_set_font(dotFont)

if(place_meeting(x,y,Obj_player))
{
	triggered = 1
	chk_col = 1
}
else{
	chk_col=0;
}

if(show_Draw_timer>0)
{
	draw_sprite(spr_dialog,0,cam_x+190,cam_y+90);
	draw_text(cam_x+230, cam_y+120, fire_safety_tips[global.index])
	draw_sprite(spr_O,0,cam_x+550, cam_y+220);
	draw_sprite(spr_X,0,cam_x+700, cam_y+220);
	show_Draw_timer--;
}


if (chk_col==1) {
	show_Draw_timer=room_speed*6;
}

else {
	draw_sprite(spr_mark, 0, x, y)
}
}