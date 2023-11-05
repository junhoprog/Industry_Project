/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

draw_set_color(c_white)
draw_set_font(timerfont)


var _s_score =""
_s_score += "Score:"
_s_score += string(score)

draw_text(5,64,_s_score)

