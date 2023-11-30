//// Obj_particle_smoke의 Step 이벤트
//elapsed_time = current_time - global.start_time;  // 게임 시작부터 경과한 시간 계산
//num_active_emitters = floor(elapsed_time / 1000);  // 경과한 시간에 따른 활성화할 emitter의 개수 계산

//elapsed_time = (current_time - global.start_time) / 1000;  // 게임 시작부터 경과한 시간 계산 (초 단위)
//num_active_emitters = floor(exp(elapsed_time / 300) * array_length(global.smoke_emitters));  // 5분 동안 지수 함수 형태로 증가




//// 각 활성화된 emitter에서 파티클 burst
//for (i = 0; i < min(num_active_emitters, array_length(global.smoke_emitters)); i++) {
//    // 파티클 burst 코드...
//    part_emitter_burst(Obj_particles_setup.particle_system, 
//          global.smoke_emitters[i], Obj_particles_setup.smoke_particle_type, 
//          (room_width/1280)*200);
//	global.is_smoke_area[i] = true;
//}
