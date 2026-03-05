/// @desc ?

if instance_exists(oGameManager) && oGameManager.state == GAME_STATES.GAMEPLAY
{
	state = STATE_MODE.PAUSADO;
	oGameManager.state = GAME_STATES.CONCLUIDO;
}