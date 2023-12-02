if global.Is_Fire = 0
{
	instance_create_depth(60, 450, -1000, Obj_Fire)
	global.Is_Fire = 1;
	global.commonspace_Isfire = 1;
}

if global.commonspace_Isfire
{
	if global.common_space_width > global.commonspace_F * 128
	{
		instance_create_depth(60+(global.commonspace_F * 128), 450, -1000, Obj_Fire)
	}
	else
	{
		if global.commonspace2_Isfire = 0
		{
			global.commonspace2_Isfire = 1;
		}
		else 
		{
			global.hallway_Isfire = 1;
		}
	}
}
alarm[0] = 150;







