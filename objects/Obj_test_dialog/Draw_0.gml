/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

var cam_x = camera_get_view_x(view_camera[0]);
var cam_y = camera_get_view_y(view_camera[0]);
draw_set_font(dotFont)

if (chk_col==1) {
	draw_sprite(spr_dialog,0,cam_x+190,cam_y+90);
	draw_text(cam_x+230, cam_y+120, quizs[0])
}

else {
	draw_sprite(spr_mark, 0, x, y)
}