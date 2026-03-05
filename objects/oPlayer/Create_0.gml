/// @desc ?

controlsSetup();

enum STATE_MODE
{
	PAUSADO,
	GAMEPLAY,
	PEDAGIO,
	EXPLODIU
}

state = STATE_MODE.GAMEPLAY;

//movimento com momentum
spdX = 0;
spdY = 0;
MAXspdX = 3;
MAXspdY = 3;
acel = .1;

spd = 3;
rot = direction;
moveRot = 2.5;

imgIndex = 0;