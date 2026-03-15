/// @desc ?


draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,rot,image_blend,image_alpha);

if flash > 0
{
	flash--;
	shader_set(shWhite);
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,rot,image_blend, image_alpha);
	shader_reset();
}