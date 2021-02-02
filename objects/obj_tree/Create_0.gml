/// @description
image_speed = 1;
image_index = irandom_range(1,11);
initialx = x;
initialy = 121.9038;
growth = random_range(-0.05,0.15);
image_xscale = (0.130 + growth) * choose(1,-1);
image_yscale = 0.153 + growth;
shade = 255 - obj_treeSpawner.count * 25;
image_blend = make_color_rgb(shade,shade,shade);