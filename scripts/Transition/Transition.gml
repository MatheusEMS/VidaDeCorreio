/// @desc ?
function Transition()
{
	with (oTransition)
	{
		mode = argument[0]; 
	
		if argument_count > 1
		{
			target = argument[1];	
		}
	}
}

//so rodar no game manager
function IrStateTransition(_room)
{
	checkTransition = false;
	roomDestino = _room;
	state = GAME_STATES.TRANSITION;
	
}