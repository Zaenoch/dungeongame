///camera follow
	
x += (xto - x)/10; 
y += (yto - y)/10;

if (follow != noone){
	xto = (follow.x + mouse_x)/2;
	yto = (follow.y + mouse_y)/2;
	}

var vm = matrix_build_lookat(x,y,-10,x,y,0,0,1,0);
camera_set_view_mat(camera,vm);