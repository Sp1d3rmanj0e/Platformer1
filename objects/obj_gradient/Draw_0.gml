/// @description Gradient

room_gradient = true;

if room_gradient {
	gpu_set_tex_filter(true);
	destroy_me = draw_sprite_stretched(room_gradient, 0, 0, 0, room_width, room_height);
	gpu_set_tex_filter(false);
}