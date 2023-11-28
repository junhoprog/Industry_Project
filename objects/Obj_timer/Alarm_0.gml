/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

if (pause=0){
	t_mil -= 1

	if t_mil = -1 {
		t_mil = 9
		t_sec -= 1
	}
	if t_sec = -1 {
		t_sec = 59
		t_min -= 1
	}

	if !(t_sec=0&&t_min=0&&t_mil=0)
	{
		alarm[0]=6
	} else
	{
		//여기에 게임 오버
		game_end()
	}
}
else if (pause==1) {
}