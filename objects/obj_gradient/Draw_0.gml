/// @description Gradient

room_gradient = true;

if room_gradient {
	gpu_set_tex_filter(true);
	draw_sprite_stretched(spr_bg, 0, 0, 0, room_width, room_height);
	gpu_set_tex_filter(false);
}