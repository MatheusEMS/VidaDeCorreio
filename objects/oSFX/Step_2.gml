//get the volume
var _sfxVol = global.SFX_VOL * global.master_sfx_vol;


//coin snd
if coinSnd == true
{
	//var _snd = audio_play_sound(sndCoin,8,false);
	//audio_sound_gain(_snd, _sfxVol, 0);
	
	//reset
	//coinSnd = false;
}



//press button
if buttonPressSnd == true
{
	/*var _snd = audio_play_sound();
	audio_sound_gain(_snd, _sfxVol,0);
	buttonPressSnd = false;*/
}

if buttonReleaseSnd == true 
{
	/*var _snd = audio_play_sound();
	audio_sound_gain(_snd, _sfxVol,0);
	buttonReleaseSnd = false;*/
}


//Looping sfx

	//turn sound effect on and store the instance of the sound
	
	
	/*if fireSndLoop == true && !audio_is_playing(fireSndLoopInst)
	{
		fireSndLoopInst = audio_play_sound( musica_q_loopa ,6,true);		
		
	}
	
	if audio_is_playing(fireSndLoopInst)
	{
		audio_sound_gain( fireSndLoopInst, _sfxVol,0);
	}
	
	if fireSndLoop == false && audio_is_playing( fireSndLoopInst)
	{
		audio_stop_sound(fireSndLoopInst);
	}

	fireSndLoop = false;*/
	
	
	
	//SFX FADE IN AND OUT
		//start the loop and turn up the volume
		
		/*
		if beachSndLoop == true 
		{
			//play the sound
			if !audio_is_playing(beachSndLoopInst)
			{
				beachSndLoopInst = audio_play_sound(sndBeach, 6 ,true);
			}
			
			//raise the volume
			if beachSndLoopVol < 1
			{
				beachSndLoopVol += 	beachSndLoopVolSpd;
			}else {
				beachSndLoopVol = 1;
			}
		}
		
		//fade out and turn off
		if beachSndLoop == false 
		{
			//lower the  volume
			if beachSndLoopVol > 0
			{
				beachSndLoopVol -= 	beachSndLoopVolSpd;
			}else {
				beachSndLoopVol = 0;
			}
			
			//stop the sound if the gain is 0
			if beachSndLoopVol <= 0
			{
				audio_stop_sound(beachSndLoopInst);	
			}
		}
		
		//set the volume
		if audio_is_playing(beachSndLoopInst)
		{
			audio_sound_gain(beachSndLoopInst, beachSndLoopVol * _sfxVol,0);	
		}*/
		
		//reset
		beachSndLoop = false;