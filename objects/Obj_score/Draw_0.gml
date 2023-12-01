/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다


draw_set_color(c_white)
draw_set_font(dotFont)

global.score+=1;
var _s_score =""
_s_score += "Score:"
_s_score += string(global.score)

var cam_x = camera_get_view_x(view_camera[0])
var cam_y = camera_get_view_y(view_camera[0])

draw_text(cam_x+5,cam_y+64,_s_score)