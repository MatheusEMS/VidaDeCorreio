/// @desc ?

draw_sprite_ext(spr,imgIndex,x,y,image_xscale,image_yscale,rot,image_blend,image_alpha);

draw_set_colour(c_black);
draw_text(20,20,direction);
draw_text(20,40,spdX);
draw_text(20,60,spdY);

draw_text(x,y - 32,state);
draw_text(x,y - 64,hp);


draw_set_colour(-1);