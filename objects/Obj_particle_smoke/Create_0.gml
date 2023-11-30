
//smoke_emitter = part_emitter_create(Obj_particles_setup.particle_system);


//part_emitter_region(Obj_particles_setup.particle_system, smoke_emitter, 
//	0+bufferX_left, room_width+bufferX_right, 
//	0, global.smoke_height, 
//	ps_shape_line, ps_distr_linear);

//part_emitter_burst(Obj_particles_setup.particle_system, 
//	smoke_emitter, Obj_particles_setup.smoke_particle_type, 
//	(room_width/1280)*200);

///////////////////////////////////////
particle_height = 50; // 파티클의 높이
region_height = 550; // 연기 영역의 높이
num_emitters = floor(region_height / particle_height); // 균등하게 나눌 영역의 개수 계산

// 각 영역에 대해 emitter 생성
global.smoke_emitters = array_create(num_emitters); // 전역 배열 생성
global.is_smoke_area = array_create(num_emitters);
global.smoke_areaY = array_create(num_emitters);

for (i = 0; i < num_emitters; i++) {
    smoke_emitter_temp = part_emitter_create(Obj_particles_setup.particle_system);
    y_start = i * particle_height; // 각 영역의 시작 y좌표
    y_end = y_start + particle_height; // 각 영역의 끝 y좌표
	global.smoke_areaY[i] = [y_start, y_end];
	
    // emitter region 설정
    part_emitter_region(Obj_particles_setup.particle_system, smoke_emitter_temp, 
        0, room_width, 
        y_start, y_end, 
        ps_shape_line, ps_distr_linear);

    // emitter를 배열에 저장
    global.smoke_emitters[i] = smoke_emitter_temp;
	global.is_smoke_area[i] = false;
}

alarm[1] = 1;
