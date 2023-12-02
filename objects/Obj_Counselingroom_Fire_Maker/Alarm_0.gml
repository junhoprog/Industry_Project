if global.Is_Fire = 0
{
	instance_create_depth(60, 450, -1500, Obj_Fire)
	global.Is_Fire = 1;
	global.counselingroom_Isfire = 1;
}

if global.counselingroom_Isfire = 1
{
	if global.classroom_width > global.counselingroom_F * 128
	{
		instance_create_depth(60+(global.counselingroom_F * 128), 450, -1500, Obj_Fire)
	}
	else
	{
		if global.classroom1_Isfire = 0
		{
			global.classroom1_Isfire = 1;
		}
		else 
		{
			global.hallway_Isfire = 1;
		}
	}	
}
alarm[0] = 150;



