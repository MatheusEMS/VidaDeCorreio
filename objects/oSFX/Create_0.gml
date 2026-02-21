global.SFX_VOL = 1;
global.master_sfx_vol = 1;

coinSnd = false;

//sons de objetos que não se destroem ao ativa-los ex:apertar botao e dps solta-lo
buttonPressSnd = false;
buttonReleaseSnd = false;

//sons que loopam
fireSndLoop = false;
fireSndLoopInst = noone;

//fade in and out
beachSndLoop = false;
beachSndLoopInst = noone;
beachSndLoopVol = 0;
//quanto tempo demora para chegar no max
beachSndLoopVolSpd = 1 / ( 60 * 5);