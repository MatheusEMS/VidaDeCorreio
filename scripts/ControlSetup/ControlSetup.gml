function controlsSetup()
{
	
	//jumpBufferTime = 5;
	
	//jumpKeyBuffered = 0;
	//jumpKeyBufferTimer = 0;
	
	DownKeyStickPressed = 0;
	UpKeyStickPressed = 0;
	LeftKeyStickPressed = 0;
	RightKeyStickPressed = 0;
	controller = 0;

}

function getControls(){
		
	downKeyPressed = 0;
	upKeyPressed = 0;	

	var _gamepad = 0;
	if gamepad_is_connected(_gamepad)
	{
		gamepad_set_axis_deadzone(_gamepad, .2);	
		
	}
	
//Pause
pauseKeyPressed = InputPressed(INPUT_VERB.PAUSE);
	
//right
	rightKey = InputCheck(INPUT_VERB.RIGHT);
	/*rightKey = keyboard_check(ord("D"));*/
		//rightKey = clamp(rightKey,0,1);
		
	rightKeyPressed = InputPressed(INPUT_VERB.RIGHT);

//left
	leftKey = InputCheck(INPUT_VERB.LEFT);
		//leftKey = clamp(leftKey,0,1);
		
	leftKeyPressed = InputPressed(INPUT_VERB.LEFT);
	
//up
	upKey = InputCheck(INPUT_VERB.UP);
		//upKey = clamp(upKey,0,1);
		
	upKeyPressed = InputPressed(INPUT_VERB.UP);
	
//down
	downKey = InputCheck(INPUT_VERB.DOWN);
		//downKey = clamp(downKey,0,1);
		
	downKeyPressed = InputPressed(INPUT_VERB.DOWN);
	
	
	
//left and right
	moveRL = (rightKey - leftKey);
		//moveRL = clamp(moveRL,-1,1);
		
//up and down
	moveUD = (downKey - upKey);
		//moveUD = clamp(moveUD,-1,1);
		
//up and down Menu
	moveUDMenu = (downKeyPressed - upKeyPressed);
		//moveUDMenu = clamp(moveUDMenu,-1,1);
		
		
		
	
//aceppt
	rollKeyPressed = InputPressed(INPUT_VERB.ACCEPT);
		//rollKeyPressed = clamp(rollKeyPressed,0,1);	
		
//action 
	interactKeyPressed = InputPressed(INPUT_VERB.ACTION);
		//interactKeyPressed = clamp(interactKeyPressed,0,1);	
	
	
//cancel
	attackKeyPressed = InputPressed(INPUT_VERB.CANCEL);
		//attackKeyPressed = clamp(attackKeyPressed,0,1);
		
//special 
	itemKeyPressed = InputPressed(INPUT_VERB.SPECIAL);//trocar
		//itemKeyPressed = clamp(itemKeyPressed,0,1);
		
//equipament cycling
	//itemSelectUpPressed = InputPressed(INPUT_VERB.EQUIP1);
		//itemSelectUpPressed = clamp(itemSelectUpPressed,0,1);
		
	//itemSelectDownPressed = InputPressed(INPUT_VERB.EQUIP2);
		//itemSelectUitemSelectDownPressedpPressed = clamp(itemSelectDownPressed,0,1);

		



}