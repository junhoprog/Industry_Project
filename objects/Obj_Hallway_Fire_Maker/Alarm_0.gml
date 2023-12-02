if global.hallway_Isfire = 1
{
	if room_width > global.hallway_F * 128
		{
			instance_create_depth(60+(global.hallway_F * 128), 450, -1000, Obj_Fire)
		}
}


