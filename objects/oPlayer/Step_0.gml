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
		if global.upgrades[7] == false
		{
			if rightKey
			{
				rot -= moveRot;
			}
			if leftKey
			{
				rot += moveRot;
			}
		}else//controles invertidos
		{
			if leftKey
			{
				rot -= moveRot;
			}
			if rightKey
			{
				rot += moveRot;
			}
		}
		
		//Boost
		if global.upgrades[3] == true
		{
			
		}
		
		//acelerar
		if (upKey && global.upgrades[7] == false) || (TurboKey && global.upgrades[3] == true)
		|| (downKey && global.upgrades[7] == true)
		{
			imgIndex = 1;
			
			//Esta usando Turbo
			if (TurboKey && global.upgrades[3] == true)
			{
				
				//criando trail
				with (instance_create_depth(x,y,depth+1,oTrail))
				{
					//especifico para esse tiro
					//image_speed = 0; //nesse caso tem que parar a speed
					//image_index = 1; //nesse caso tem que passar o index
					//direction = other.direction;
					//image_angle = direction;
	
					//Padrao
					sprite_index = other.spr; //passo a sprite
					image_alpha = 0.7; // passo o alpha
	
					//Opcoes de timer
					travarScale0 = true; ///trava as scale no min 0, sem valor negativo
					spdDiminui = 0.04; //timer de vida
					spdDiminuiScale = 0; //timer das scales
					cor = c_red;  //passo a cor
				}

				
				//limitando a spd
				spdX = clamp(spdX,-MAXspdXTurbo,MAXspdXTurbo);
				spdY = clamp(spdY,-MAXspdYTurbo,MAXspdYTurbo);
			
				spdX += lengthdir_x(acelTurbo,rot);
				spdY += lengthdir_y(acelTurbo,rot);
				
			}else
			{
				//limitando a spd
				if abs(spdX) <= 3 && abs(spdY) <= 3 //se saiu do turbo não dar clamp na hora
				{
					spdX = clamp(spdX,-MAXspdX,MAXspdX);
					spdY = clamp(spdY,-MAXspdY,MAXspdY);
				}else
				{
					//fazer a spd se aproximar de 0
					spdX = lerp(spdX,0,0.05);
					spdY = lerp(spdY,0,0.05);
				}
			
				spdX += lengthdir_x(acel,rot);
				spdY += lengthdir_y(acel,rot);
			}
			
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
					//desecolher
					encolhido = false
					mask_index = sPlayer;
				
					if global.upgrades[0] == true // colocar o mini rosa
					{
						spr = sPlayerPainted;
					}else
					{
						//está ficando preso na parede
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
		
		spdX = 0;
		spdY = 0;
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