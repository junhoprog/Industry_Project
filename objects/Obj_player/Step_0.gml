var key_left = keyboard_check(vk_left);
var key_right = keyboard_check(vk_right);
var key_up = keyboard_check_pressed(vk_up);
//var onStair=place_meeting(x,y+1,obj_stair);
var onWall=place_meeting(x,y+1,Obj_flooring);

//자신위에있는 층은 무시
var x_move = key_right - key_left;

if(x_move!=0)image_xscale=x_move;

hsp=x_move*walksp
vsp+=grav_;

/*var collisionObject=instance_place(x+hsp,y+vsp,obj_wall)
if(collisionObject!=noone&&collisionObject.depth<depth)
{
	x=x+hsp
	y=y+vsp
}*/


if(onWall){
if(x_move!=0){sprite_index=spr_dummy_run}
else{sprite_index=spr_dummy}
}

if(key_up) 
{
	vsp=-10
}
if(place_meeting(x+hsp,y,Obj_flooring))
{
	hsp=0;
}
x+=hsp;

if (place_meeting(x, y + vsp, Obj_flooring))
{
	onStair=0
    while (!place_meeting(x, y + sign(vsp), Obj_flooring))
    {
        y = y + sign(vsp);
      grv=0;
    }
    vsp = 0;
}
y+=vsp
/*
if (place_meeting(x, y + vsp, obj_stair))
{
    while (!place_meeting(x, y + sign(vsp), obj_stair))
    {
        y = y + sign(vsp);
      grv=0;
    }
    vsp = 0;
}*
y+=vsp;




//var key_left = keyboard_check(vk_left);
//var key_right = keyboard_check(vk_right);

//var x_move = key_right - key_left;

//if(x_move==0)
//{
//   sprite_index=spr_dummy
//}

//else{
//   sprite_index=spr_dummy_run
   
//   if(x_move<0){
//   image_xscale=-1
//   }
   
//   else if(x_move>0)
//   {
//      image_xscale=1;
//   }

//hsp = x_move * walksp;
//x+=hsp
//}
   