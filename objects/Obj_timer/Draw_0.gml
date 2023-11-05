/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다


draw_set_color(c_white)
draw_set_font(dotFont)
draw_set_halign(fa_left)
draw_set_valign(fa_top)

var t =""
t += string(t_min)
t += ":"
if t_sec > 9 {t+=""+string(t_sec)}
if t_sec < 10 {t+="0"+string(t_sec)}
t += "."
t += string(t_mil)

var cam_x = camera_get_view_x(view_camera[0])
var cam_y = camera_get_view_y(view_camera[0])

draw_text(cam_x+5,cam_y+5,t)