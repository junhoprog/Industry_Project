/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

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
triggered=0;
}
if(show_Draw_timer>0)
	{
		draw_sprite(spr_dialog,0,cam_x+190,cam_y+90);
		draw_text(cam_x+230, cam_y+120, quizs[0])
		show_Draw_timer--;
	}
if(show_Draw_timer==0||(answer==false&&is_choice))
{
	//선택했는데 틀렸거나 또는 시간이 다 되었을 때
	score-=2000;
	is_choice=false;
}
 
if(is_choice&&answer==true)
{
	score+=2000;
	is_choice=false;
}


if (chk_col==1) {
	show_Draw_timer=room_speed*5;
	
}

else {
	draw_sprite(spr_mark, 0, x, y)
}