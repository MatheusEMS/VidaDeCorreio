/// @desc ?

//get inputs
getControls();

switch(state)
{
	case STATE_MODE.PAUSADO:
	
	break;
	
	case STATE_MODE.GAMEPLAY:
		//tirar invencibilidade
		invincibleTime = false;
		
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
		
		PlayerColision();
		
		
		x += spdX;
		y += spdY;
		direction = rot;
		
		//resetar bonk vars
		timerBonk = 1;
		speedBonk = 1.5;
	break;
	
	case STATE_MODE.PEDAGIO:
	
	break;
	
	case STATE_MODE.EXPLODIU:
	
	break;
	
	case STATE_MODE.BONK:
		//Movement
		spdX = lengthdir_x(speedBonk,direction-180);
		spdY = lengthdir_y(speedBonk,direction-180);
	
	
		//collision
		PlayerColision();
		
		//Update Sprite
		
		//sprite_index = sPlayerBonk;
		//image_index = CARDINAL_DIR - 2;
	
		//Change State
		if timerBonk <= 0
		{
			state = STATE_MODE.GAMEPLAY;	
		}
		
		speedBonk -= 0.01;
		
		timerBonk -= delta_time/1000000;
		
		x += spdX;
		y += spdY;
	break;
}