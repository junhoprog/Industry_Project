
if(distance_to_object(Obj_player) <= 20){
    meet_player = true;
}

else{
	meet_player=false;
}
var _s_score =""
_s_score += "당신의 점수는 "
_s_score += string(global.score)
_s_score += "입니다."
if(meet_player && mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, id)){
   
   show_message(_s_score)
   game_end()
}

