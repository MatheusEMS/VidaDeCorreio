/// @desc Initialise & Globals
randomise();
controlsSetup();

global.entrega = 1; //fase
global.Tempo = 500;


timer = global.Tempo;

//Upgrades
//guardar o que foi e não foi escolhido
global.upgrades = [
false, //cor nave 0
false,	//passe pedagio 1
false,	//laser 2
false,	//boost 3 
false,	//armor 4
false,  //encolher 5
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
	UPGRADE
}

state = GAME_STATES.GAMEPLAY;