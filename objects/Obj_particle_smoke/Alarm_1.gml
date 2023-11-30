for (var i = 0; i < global.smoke_area_index; i++) { // 0번부터 5번까지의 emitter
    if (i < array_length(global.smoke_emitters)) { // 배열 범위 내에 있는지 확인
        part_emitter_burst(Obj_particles_setup.particle_system, 
            global.smoke_emitters[i], Obj_particles_setup.smoke_particle_type, 
            (room_width/1280)*200);
		global.is_smoke_area[i] = true;
    }
}

alarm[1] = 250; // 
