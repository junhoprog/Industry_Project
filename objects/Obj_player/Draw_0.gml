draw_self();

if (show_text) {
    var text_to_display;

    if (check_spr) {
        text_to_display = "Lie down";
    } else {
        text_to_display = "Stand up";
    }
	draw_set_color(c_black);
    draw_text(x+40 , 390, text_to_display);
	show_text_timer -= 1;
	
	var border_thickness=4;
	draw_set_color(c_black)
	draw_rectangle(x+38, 388, x+ 230, 430, true);
	draw_set_color(c_white)
	if (show_text_timer <= 0) {
        // 텍스트를 표시할 시간이 지나면 텍스트 표시 플래그 비활성화
        show_text = false;
    }
}

