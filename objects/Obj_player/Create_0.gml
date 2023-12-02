hsp=0;
vsp=0;
grv=0;
grav_=1;
walksp=10;

touch_fire=false;
cnt=0;
touch_count = 0; // 터치 횟수를 저장하는 변수 초기화
check_spr=true;
show_text = false; // 텍스트 표시 플래그를 활성화
show_text_timer =room_speed*2;
collision_alarm=room_speed;
meet_fire=false;
global.hasFireExtinguisher=0;
is_avoidF=0;
is_Stair=0;


global.start_time = current_time;
global.smoke_area_index = 0;