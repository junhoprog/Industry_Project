

//particle_system = part_system_create();
particle_system = part_system_create_layer("Smoke",1);
smoke_particle_type = part_type_create();
part_type_shape(smoke_particle_type, pt_shape_smoke);
part_type_size(smoke_particle_type, 0.5, 1.2, 0, 0.03);
part_type_orientation(smoke_particle_type, 0, 360, 0, 0, true); // 회전을 무작위로 설정
part_type_life(smoke_particle_type, 250, 500);
part_type_color1(smoke_particle_type, c_black);
part_type_alpha3(smoke_particle_type, 0.7, 0.5, 0.1);


