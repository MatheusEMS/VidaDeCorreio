x += lengthdir_x(spd, direction);
y += lengthdir_y(spd,direction);

life--;

if life <= 0
{
	instance_destroy();
}

if place_meeting(x,y,oMeteoro)
{
	with (instance_place(x,y,oMeteoro))
	{
		hp--;
		flash = 3;
	}

	instance_destroy();
}

if (place_meeting(x,y,oWall) && image_index !=0) 
{
	while place_meeting(x,y,oWall)
	{
		x -= lengthdir_x(1, direction);
		y -= lengthdir_y(1,direction);
	}
	spd = 0;
	instance_create_layer(x,y,"Bullet",oHitSpark);
	instance_destroy();
}