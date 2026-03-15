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

//sprite
spr = sPlayer;
mask_index = sPlayer;


//UPGRADES

if global.upgrades[0] == true // cor da nave
{
	spr = sPlayerPainted;
}

//Atirar laser
if global.upgrades[2] == true
{
	//trocar sprite para um com armas
}

if global.upgrades[4] == true //armadura
{
	hp = 2
}else
{
	hp = 1;	
}



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

//Laser
firingDelay = 0;
recoil = 0;

//Encolher
encolhido = false;
EncolherTime = 3;
timerEncolher = EncolherTime;

//pedagio
timerPedagio = 10;

imgIndex = 0;