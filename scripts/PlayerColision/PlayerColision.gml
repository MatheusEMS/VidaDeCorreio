/// @desc ?
function PlayerColision(){
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