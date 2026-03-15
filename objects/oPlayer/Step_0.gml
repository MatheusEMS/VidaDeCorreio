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
		
		//acelerar
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
		
		//Boost
		
		/*
		//Trail effect
		with (instance_create_depth(x,y,depth+1,oTrail))
		{
			sprite_index = other.sprite_index;
			image_blend = c_fuchsia;
			image_alpha = 0.7;
		}*/
		
		
		//Collision
		PlayerColision();
		
		
		x += spdX - lengthdir_x(recoil,image_angle);
		y += spdY - lengthdir_y(recoil,image_angle);
		direction = rot;
		
		//Atirar laser
		if global.upgrades[2] == true
		{
			firingDelay--;
			recoil = max(0,recoil - 1);
			
			if ShootKeyPressed && firingDelay < 0 
			{
	
				recoil = 1;
				firingDelay = 5;
				ScreenShake(2,10);
				
				//play a sound effect
				//oSFX.shootSnd = true;
				
				with(instance_create_layer(x,y,"Bullet",oBullet))
				{
					spd = 25;
					direction = other.rot + random_range(-3,3);
					image_angle = direction;
				}

			}

		}
		
		//Encolher Nave
		if global.upgrades[5] == true   
		{
			if EncolherKeyPressed && encolhido == false
			{
				encolhido = true
				mask_index = sPlayerMini;
				
				if global.upgrades[0] == true // colocar o mini rosa
				{
					spr = sPlayerMini;
				}else
				{
					spr = sPlayerMini;
				}
			}
			
			if encolhido
			{
				timerEncolher -= delta_time/1000000;
				
				if timerEncolher <= 0
				{
					encolhido = false
					mask_index = sPlayer;
				
					if global.upgrades[0] == true // colocar o mini rosa
					{
						spr = sPlayerPainted;
					}else
					{
						spr = sPlayer;
					}
					
					//resetar timer
					timerEncolher = EncolherTime;
				}
			}
		}
		
		//resetar bonk vars
		timerBonk = 1;
		speedBonk = 1.5;
	break;
	
	case STATE_MODE.PEDAGIO:
		//pagando pedagio 
		timerPedagio -= delta_time/1000000;
		
		if timerPedagio <= 0
		{
			state = STATE_MODE.GAMEPLAY;	
		}
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