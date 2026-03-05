/// @desc ?

//get inputs
getControls();

switch(state)
{
	case STATE_MODE.PAUSADO:
	
	break;
	
	case STATE_MODE.GAMEPLAY:
		
		
		//mover a nave
		if rightKey
		{
			rot -= moveRot;
		}
		if leftKey
		{
			rot += moveRot;
		}
		
		if upKey
		{
			imgIndex = 1;
			
			//limitando a spd
			spdX = clamp(spdX,-MAXspdX,MAXspdX);
			spdY = clamp(spdY,-MAXspdY,MAXspdY);
			
			spdX += lengthdir_x(acel,rot);
			spdY += lengthdir_y(acel,rot);
			
			
			
		}else
		{
			//fazer a spd se aproximar de 0
			spdX = lerp(spdX,0,0.05);
			spdY = lerp(spdY,0,0.05);
			
			imgIndex = 0;
		}
		
		//colisions
		if place_meeting(x + spdX, y, oWall)
		{
			spdX = 0;
		}
		if place_meeting(x, y + spdY, oWall)
		{
			spdY = 0;
		}
		
		
		x += spdX;
		y += spdY;
		direction = rot;
	break;
	
	case STATE_MODE.PEDAGIO:
	
	break;
	
	case STATE_MODE.EXPLODIU:
	
	break;
}