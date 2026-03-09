/// @desc ?

if instance_exists(oGameManager) && oGameManager.state == GAME_STATES.GAMEPLAY
{
	//checar se tem passe
	if global.upgrades[1] == false
	{
		state = STATE_MODE.PEDAGIO;
		instance_destroy(other);
	}else
	{
		
	}
}