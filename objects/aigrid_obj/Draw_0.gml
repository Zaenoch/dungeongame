/// @description AI grid

draw_set_alpha(0.1);

mp_grid_draw(global.ai_grid);

for (var i = 0; i < room_width; i += 16;){
	draw_line(i,0,i,room_height);
}
for (i = 0; i < room_height; i += 16;){
	draw_line(0,i,room_width,i);
}

draw_set_alpha(1);

draw_path(global.path,x,y,true);