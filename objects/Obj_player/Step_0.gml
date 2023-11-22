var key_left = keyboard_check(vk_left);
var key_right = keyboard_check(vk_right);
var jump = keyboard_check_pressed(vk_up);
var onWall=place_meeting(x,y+1,Obj_flooring);

//자신위에있는 층은 무시
var x_move = key_right - key_left;

if(x_move!=0) image_xscale=x_move;

hsp=x_move*walksp
vsp+=grav_;


//정상 흐름
if(onWall){
	//플레이어가 땅에 닿아 있을 때
	if(x_move!=0){ sprite_index = spr_dummy_run }
	else{ sprite_index = spr_dummy }
	
	if(jump){
		vsp = -20; //기존 -15, 계단 수정을 위해 -30
	}
	
}else{
	//공중에 떠 있는 상황이므로 점프 애니메이션 출력
	sprite_index = spr_dummy_jump;
}


//예외 흐름: 플레이어가 지나갈 수 없는 벽에 닿을 경우
if(place_meeting(x+hsp, y, Obj_flooring)){
	hsp = 0;
}
x += hsp;

if( place_meeting(x, y+vsp, Obj_flooring)){
	vsp = 0;
}
y += vsp;


