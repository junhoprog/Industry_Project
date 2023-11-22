room_goto(targetRoom);
other.x = targetX;
other.y = targetY;

//플레이어 이미지를 바꿔야 하는데 안되는 것
other.image_xscale *= playerView;

//룸 전환시 카메라 좌표가 크게 움직여야 하는 경우
Obj_camera.snapToPlayer = true;