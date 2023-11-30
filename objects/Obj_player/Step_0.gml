var key_left = keyboard_check(vk_left);
var key_right = keyboard_check(vk_right);
var jump = keyboard_check_pressed(vk_up);
//var onStair=place_meeting(x,y+1,obj_stair);
var onWall=place_meeting(x,y+1,Obj_flooring);

//자신위에있는 층은 무시
var x_move = key_right - key_left;

if(x_move!=0) image_xscale=x_move;

if(check_spr)
	hsp=x_move*walksp
else{
	hsp=x_move*walksp/2
}
vsp+=grav_;

//정상 흐름
if(onWall){
    //플레이어가 땅에 닿아 있을 때
   if(check_spr)
   {
       if(x_move!=0){ sprite_index = spr_dummy_run }
       else{ sprite_index = spr_dummy }

       if(jump){
           vsp = -20;
       }
      
   }

   else{
      if(x_move!=0){ sprite_index = spr_dummy_sukrun }
       else{ 
         //y=sprite_height;
         sprite_index = spr_dummy_suk }//얘만 문제생김 왜지?
   }
}

else{
    sprite_index = spr_dummy_jump;
}

if (((x-40<mouse_x&&mouse_x<x+25)&&(y-70<mouse_y&&mouse_y<y))&&mouse_check_button_pressed(mb_left)) {
    // 터치 영역과 충돌하고 마우스 왼쪽 버튼이 눌렸을 때
    touch_count += 1; // 터치 횟수 증가
   if(check_spr)
   {
      //평범   
       if (touch_count == 1) {
            show_text = true;
            show_text_timer = room_speed * 2;
         
         
        } else if (touch_count == 2) {
            check_spr = !check_spr;
            touch_count = 0;
        }
   }
   else{
       if (touch_count == 1) {
            show_text = true;
            show_text_timer = room_speed * 2;
        } else if (touch_count == 2) {
            check_spr = !check_spr;
            touch_count = 0;
        }
   }
  
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
	//
	if(distance_to_object(Obj_fire) <= 50){
		meet_fire=true;
		var fire_id = instance_nearest(x,y,Obj_fire);
		
		if(global.hasFireExtinguisher==1&&meet_fire && mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, fire_id)){
			instance_destroy(fire_id);
		}
		
		if(place_meeting(x,y,Obj_fire))
		{
			touch_fire=true;
			if(touch_fire==true){
				global.health--;	
			}//만나고있을때 한번뜨고 계속 감소하다가 멀어질 때 멀어졌다뜨고 감소중단
		}
		else{
			touch_fire=false;
		}
	}

	else{
			meet_fire=false;
		}



// Obj_player의 Step 이벤트
for (var i = 0; i < array_length(global.smoke_emitters); i++) {
    // 연기 영역에 파티클이 burst 되었는지 확인
    if (global.is_smoke_area[i]) {
        // emitter region의 y좌표 범위를 가져옴
        y_start = global.smoke_areaY[i][0];
        y_end = global.smoke_areaY[i][1]; 

        // 플레이어가 연기 영역에 있는지 확인하고 건강 수치 감소
        if (Obj_player.y >= y_start && Obj_player.y <= y_end) {
            global.health--;  // 플레이어가 연기 영역에 있을 경우 건강 수치 감소
        }
	
    }
}

elapsed_time = (current_time - global.start_time) / 1000;  // 게임 시작부터 경과한 시간 계산 (초 단위)

if (elapsed_time <= 60 * 4) {  // 게임 플레이 시간 동안. 테스트 용도로 1분으로 기입
    global.smoke_area_index= floor(power(elapsed_time / (60 * 4), 2) * 12);  // x^2 함수에 따라 0부터 11까지 증가
} else {
    global.smoke_area_index = 11;  // 5분 후에는 smoke_index를 11로 유지
}
