/// 300프레임당 한번씩 불이 번지는 것을 기록
if global.classroom1_Isfire = 1
{
	if global.classroom1_F * 128 < global.classroom_width
	{
		global.classroom1_F = global.classroom1_F + 1;
	}
	else
	{
		if global.classroom2_Isfire = 0
		{
			global.classroom2_Isfire = 1;
		}
		else 
		{
			global.hallway_Isfire = 1;
		}
	}
}

if global.classroom2_Isfire = 1
{
	if global.classroom2_F * 128 < global.classroom_width
	{
		global.classroom2_F = global.classroom2_F + 1;
	}
	else
	{
		if global.commonspace_Isfire = 0
		{
			global.commonspace_Isfire = 1;
		}
		else 
		{
			global.hallway_Isfire = 1;
		}
	}
}

if global.commonspace_Isfire = 1
{
	if global.commonspace_F * 128 < global.common_space_width
	{
		global.commonspace_F = global.commonspace_F + 1;
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

if global.commonspace2_Isfire = 1
{
	if global.commonspace2_F * 128 < global.common_space_width
	{
		global.commonspace2_F = global.commonspace2_F + 1;
	}
	else
	{
		if global.counselingroom_Isfire = 0
		{
			global.counselingroom_Isfire = 1;
		}
		else 
		{
			global.hallway_Isfire = 1;
		}
	}
}

if global.counselingroom_Isfire = 1
{
	if global.counselingroom_F * 128 < global.classroom_width
	{
		global.counselingroom_F = global.counselingroom_F + 1;
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

if global.hallway_Isfire = 1
{
	if global.hallway_F * 128 < global.hallway_width
	{
		global.hallway_F = global.hallway_F + 1;
	}
}

alarm[0] = 300;



