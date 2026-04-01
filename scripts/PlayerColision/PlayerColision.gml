/// @desc ?
function PlayerColision(){
	
	//checando se está preso na parede
		if place_meeting(x , y, oWall)
		{
			show_message("preso");
			
			//tentar empurrar o player para algum lado
			if !place_meeting(x + 16, y, oWall)
			{
				x = x +16;
			}
			if !place_meeting(x - 16, y, oWall)
			{
				x = x - 16;
			}
			if !place_meeting(x, y + 16, oWall)
			{
				y = y + 16;
			}
			if !place_meeting(x, y - 16, oWall)
			{
				y = y - 16;
			}
			if !place_meeting(x + 16, y + 16, oWall)
			{
				x = x + 16;
				y = y + 16;
			}
			if !place_meeting(x + 16, y - 16, oWall)
			{
				x = x + 16;
				y = y - 16;
			}
			if !place_meeting(x - 16, y + 16, oWall)
			{
				x = x - 16;
				y = y + 16;
			}
			if !place_meeting(x - 16, y - 16, oWall)
			{
				x = x - 16;
				y = y - 16;
			}
		}
		
		//colisions
		if place_meeting(x + spdX, y, oWall)
		{
			spdX = 0;
		}
		if place_meeting(x, y + spdY, oWall)
		{
			spdY = 0;
		}
}