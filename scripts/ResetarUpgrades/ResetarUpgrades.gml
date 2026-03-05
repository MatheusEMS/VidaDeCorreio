/// @desc ?
function ResetarUpgrades(){
		//resetando vars
		timer = global.Tempo;
		global.corNave = c_white;
		global.passePedagio = false;
		global.laser = false;
		global.boost = false;
		global.armor = false;
		global.encolher = false;

		global.invisivel = false;
		global.controlesInvertidos = false;
		upgrades = [
		false, //cor nave
		false,	//passe pedagio
		false,	//laser
		false,	//boost
		false,	//armor
		false,  //encolher
		false,	//invisivel
		false,	//controles invertidos
		]
}