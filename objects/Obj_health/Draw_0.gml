/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다


var cam_x = camera_get_view_x(view_camera[0])
var cam_y = camera_get_view_y(view_camera[0])

draw_sprite_part(spr_heart,0,0,0,210*(health/100),210,cam_x+1088,cam_y-60)

