/// @desc UI

/// @desc ?

draw_text(20,20,state);

draw_text(RES_W - 250,20,global.upgrades);
switch(state)
{
	case GAME_STATES.MENU:
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle)
	
		draw_text(RES_W / 2,RES_H /2,"Aperte ENTER");
	break;
	
	
	case GAME_STATES.TUTORIAL:
		draw_sprite(sFundoTutorial,0,RES_W / 2,RES_H /2);
	
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
		draw_set_colour(c_black);
	
		draw_text(RES_W / 2,RES_H /2,"Aperte SPACE");
	break;
	
	
	case GAME_STATES.PREFASE:
	
	break;
	
	case GAME_STATES.CONTADORINICAL:
	
	break;
	
	case GAME_STATES.GAMEPLAY:
		draw_set_halign(fa_center);
		draw_set_font(FontTimer);
	
		draw_text(RES_W /2, 16,"Tempo: " + string(round(timer)));
	break;
	
	case GAME_STATES.CONCLUIDO:
		draw_set_halign(fa_center);
		draw_set_font(FontTimer);
	
		draw_text_ext_transformed(RES_W /2, RES_H/2,"Concluido",-1,-1,1,1,0);
	break;
	
	case GAME_STATES.ACABOUTEMPO:

	break;
	
	case GAME_STATES.UPGRADE:
		draw_sprite(sFundoTutorial,0,RES_W / 2,RES_H /2);
		
		for (var _slot = 1; _slot <= qtUpgrades;_slot++)
		{
			var _img = 0;
			//esta selecionado
			if slotSelect == _slot
			{
				_img = 1;
			}
			draw_sprite(sUpgrade,_img,RES_W/4 * _slot,RES_H/2);
			
			//draw especifico de cada item
			switch(listaTemp[_slot - 1])
			{
				//cor nave
				case 0:
				
				break;
				
				//passe pedagio
				case 1:
				
				break;
				
				//laser
				case 2:
				
				break;
				
				//boost
				case 3:
				
				break;
				
				//armor
				case 4:
				
				break;
				
				//encolher
				case 5:
				
				break;
				
				//invisivel
				case 6:
				
				break;
				
				//controles invertidos
				case 7:
				
				break;
			}
			
			draw_text(RES_W/4 * _slot,RES_H/2,listaTemp[_slot - 1]);
		}
	break;
	

}

	draw_set_halign(-1);
	draw_set_valign(-1);
	draw_set_colour(-1);
	draw_set_font(-1);




