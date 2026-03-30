/// @desc ?

if variable_global_exists("global.hitstop")
{
	if global.hitstop exit;
}

image_alpha -= spdDiminui;
image_xscale -= spdDiminuiScale
image_yscale -= spdDiminuiScale;

if(travarScale0)
{
	image_xscale = clamp(image_xscale,0,50);	
	image_yscale = clamp(image_yscale,0,50);	
}

if (image_alpha <=0) 
{
	instance_destroy();	
}