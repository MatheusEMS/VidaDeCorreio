/// @desc ?

//manter o mouse na janela

//Get inputs
getControls();


switch(state)
{
	case GAME_STATES.MENU:
		ResetarUpgrades();
	
		if actionKeyPressed 
		{
			Transition(TRANS_MODE.GOTO,RoomTutorial);
			
			//MUDA ESTADO DO JOGO
			state = GAME_STATES.TUTORIAL;
		}
	break;
	
	
	case GAME_STATES.TUTORIAL:
		if acceptKeyPressed
		{
			
		}
	break;
	
	
	case GAME_STATES.PREFASE:
	
	break;
	
	case GAME_STATES.CONTADORINICAL:
	
	break;
	
	case GAME_STATES.GAMEPLAY:
		timer -= delta_time/1000000;
	break;
	
	case GAME_STATES.CONCLUIDO:
		timerUi -= delta_time/1000000;
		
		if timerUi <= 0
		{
			//aleatorizar os upgrades
			var _i = 0;
			var _qt = 3
			
			// se tiver menos que 3 upgrades disponiveis, ent diminui o numero
			if (qtUpgradesNaLista < 3)
			{
				_qt = qtUpgradesNaLista;
			}
			

			
			while(_i < _qt)
			{
				//pega um num aleatorio
				var _n = round(random(array_length(global.upgrades) -1 ));
				
				//checa se se não é igual ao anterior e se não foi pego
				if !array_contains(listaTemp,_n) && global.upgrades[_n] != true
				{
					//coloca numa lista temporaria
					array_insert(listaTemp,_i,_n);
					
					_i++;
					//quantos upgrades vai ter na tela
					qtUpgrades ++;
				}
			}
			
			//para a ui e o menu de escolha
			slotSelect = 1;
			state = GAME_STATES.UPGRADE;
		}
	break;
	
	case GAME_STATES.ACABOUTEMPO:
	
	break;
	
	case GAME_STATES.UPGRADE:
		if leftKeyPressed
		{
			slotSelect -= 1;
			if (slotSelect < 1) slotSelect = qtUpgrades;
		}

		if rightKeyPressed
		{
			slotSelect += 1;
			if (slotSelect > qtUpgrades) slotSelect = 1;
		}
		
		//escolheu
		if acceptKeyPressed
		{
			//resetar lista temp dps que escolher
			qtUpgrades = 0;
			
			//ativar upgrade
			global.upgrades[listaTemp[slotSelect - 1]] = true;
			
			//limpar list temp
			listaTemp = [];
			qtUpgradesNaLista --;
			state = GAME_STATES.PREFASE;
		}
		
		
	break;
}

