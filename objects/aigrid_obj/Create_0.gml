global.ai_grid = mp_grid_create (0,0,room_width / 16,room_height / 16,16,16);
global.path = path_add();

mp_grid_add_instances(global.ai_grid,aiblock_obj,false);

scr_define_path();

