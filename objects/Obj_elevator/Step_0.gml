
if(distance_to_object(Obj_player) <= 20){
    meet_player = true;
}

else{
	meet_player=false;
}
if(meet_player && mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, id)){
   
      show_message("Game Over!!!") 
}

