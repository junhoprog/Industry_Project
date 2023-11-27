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

if(global.hasFireExtinguisher==1)//소화기 가진 상태면
{
	//
	if(distance_to_object(Obj_fire) <= 50){
		meet_fire=true;
		var fire_id = instance_nearest(x,y,Obj_fire);
		if(meet_fire && mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, fire_id)){
			instance_destroy(fire_id);
		}
		
		if(meet_fire&&place_meeting(x,y,Obj_fire))
		{
			show_message("체력 감소");
		}
		
	}

	else{
			meet_fire=false;
		}
}

