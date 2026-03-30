/// @desc Initialise & Globals
randomise();
controlsSetup();

global.entrega = 1; //fase
global.Tempo = 500;


timer = global.Tempo;

//Upgrades
//guardar o que foi e não foi escolhido
global.upgrades = [
true, //cor nave 0
false,	//passe pedagio 1
true,	//laser 2
true,	//boost 3 
true,	//armor 4
true,  //encolher 5
false,	//invisivel 6
false,	//controles invertidos 7
]

listaTemp = [

]

qtUpgradesNaLista = array_length(global.upgrades); //vai diminuir qd escolher um upgrade

//UI TOOLS
timerUi = 5;
alphaUi = 0;
xScaleUi = 1;
yScaleUi = 1;
qtUpgrades = 0;
slotSelect = 1;

//transition
roomDestino = noone;
checkTransition = false;

//mouse
window_set_cursor(cr_none);


enum GAME_STATES 
{
	MENU,
	TUTORIAL,
	PREFASE,
	CONTADORINICAL,
	GAMEPLAY,
	CONCLUIDO,
	ACABOUTEMPO,
	UPGRADE,
	TRANSITION
}

state = GAME_STATES.GAMEPLAY;