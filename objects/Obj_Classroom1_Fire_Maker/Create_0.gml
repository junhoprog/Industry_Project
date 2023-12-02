if global.classroom1_Isfire = 1
{
	for(i=0; i<=global.classroom1_F; i+=1;)
	{
		instance_create_depth(60+(i * 128), 450, -1000, Obj_Fire)
	}
}

alarm[0] = 150;

