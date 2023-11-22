var xCam = clamp(Obj_player.x - wCam / 2, 0, room_width - wCam);
var yCam = clamp(Obj_player.y - hCam / 2, 0, room_height - hCam);

var curX = camera_get_view_x(view_camera[0]);
var curY = camera_get_view_y(view_camera[0]);

var newX = lerp(curX, xCam, 0.1);
var newY = lerp(curY, yCam, 0.1);

//룸 전환시 카메라 위치가 바뀌는 경우
if(snapToPlayer){
	snapToPlayer = false;
	camera_set_view_pos(view_camera[0], xCam, yCam);
} else {
	camera_set_view_pos(view_camera[0], newX, newY);
}
