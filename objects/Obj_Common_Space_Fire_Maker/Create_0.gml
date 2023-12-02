if global.commonspace_Isfire = 1
{
	for(i=0; i<=global.commonspace_F; i+=1;)
	{
		instance_create_depth(60+(i * 128), 450, -1000, Obj_Fire)
	}
}

alarm[0] = 300;


