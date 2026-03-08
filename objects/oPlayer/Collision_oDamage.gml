/// @desc ?



//bonk
if !invincibleTime
{
	invincibleTime = true;
	if hp > 1 
	{
		ScreenShake(5,5);
		hp --;
		state = STATE_MODE.BONK;
	}else //explodir
	{
		ScreenShake(20,5);
		state = STATE_MODE.EXPLODIU;
	}
}