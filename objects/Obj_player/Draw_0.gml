draw_self();

if (show_text) {
    var text_to_display;

    if (check_spr) {
        text_to_display = "Lie down";
    } else {
        text_to_display = "Stand up";
    }
   draw_set_color(c_black);
    draw_text(x , y- sprite_get_width(sprite_index) - 10, text_to_display);
    show_text_timer -= 1;

    if (show_text_timer <= 0) {
        // 텍스트를 표시할 시간이 지나면 텍스트 표시 플래그 비활성화
        show_text = false;
    }
}