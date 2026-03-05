//fullscreen
if keyboard_check_pressed(vk_f1)
{
	window_set_fullscreen(!window_get_fullscreen());	
}

//Exit if there no player
if !instance_exists(follow) exit;

//get camera size
var _camWidth = camera_get_view_width(view_camera[0]);
var _camHeight = camera_get_view_height(view_camera[0]);

//get camera target coordinates
var _camX = follow.x - _camWidth/2;
var _camY = follow.y - _camHeight/2;

//Constrain cam to room borders
_camX = clamp(_camX,0,room_width - _camWidth);
_camY = clamp(_camY,0,room_height - _camHeight);

//set cam coordinate variables
finalCamX += (_camX - finalCamX) * camTrailSpd;
finalCamY += (_camY - finalCamY) * camTrailSpd;

//Screen shake
finalCamX += random_range(-shake_remain,shake_remain);
finalCamY += random_range(-shake_remain,shake_remain);
shake_remain = max(0,shake_remain-((1/shake_length)*shake_magnitude));


//set camera coordinates
camera_set_view_pos(view_camera[0], finalCamX, finalCamY);

if layer_exists("Mountains")
{
	//fica mais facil = montanha = layer_get_id("Mountains") no create e dps pegar montanha
	layer_x("Mountains",finalCamX/2);
}

if layer_exists("Trees")
{
	layer_x("Trees",finalCamX/4);
}