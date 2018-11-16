var sx = skele_obj.x;
var sy = skele_obj.y;
var fx = player_obj.x;
var fy = player_obj.y;

if !mp_grid_path(global.ai_grid,global.path,sx,sy,fx,fy,true){
	show_message("No Path");
	return false;
}
	else{
		path_set_kind(global.path,1);
		path_set_precision(global.path,2);
		return true;
	}