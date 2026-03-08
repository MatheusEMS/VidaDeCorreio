/// @desc ?

controlsSetup();

enum STATE_MODE
{
	PAUSADO,
	GAMEPLAY,
	PEDAGIO,
	EXPLODIU,
	BONK
}

state = STATE_MODE.GAMEPLAY;


if global.upgrades[4] == true
{
	hp = 2
}else
{
	hp = 1;	
}

//sprite
spr = sPlayer;

//movimento com momentum
spdX = 0;
spdY = 0;
MAXspdX = 3;
MAXspdY = 3;
acel = .1;

//bonk
timerBonk = 1;
speedBonk = 1.5;
invincibleTime = false;

spd = 3;
rot = direction;
moveRot = 2.5;

imgIndex = 0;