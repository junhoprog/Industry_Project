if global.Is_Fire = 0
{
	instance_create_depth(60, 450, -1000, Obj_Fire)
	global.Is_Fire = 1;
	global.classroom2_Isfire = 1;
}

if global.classroom2_Isfire = 1
{
	if global.classroom_width > global.classroom2_F * 128
	{
		instance_create_depth(60+(global.classroom2_F * 128), 450, -1000, Obj_Fire)
	}
}
alarm[0] = 150;





