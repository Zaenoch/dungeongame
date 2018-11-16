scr_define_path();

dir = point_direction(player_obj.x,player_obj.y,skele_obj.x,skele_obj.y);
xdir = cos(dir*pi/180);
ydir = sin(dir*pi/180);

movespeed = 3;

if distance_to_object(player_obj) < 150 {
	hsp = -(xdir * movespeed);
	vsp = (ydir * movespeed);
	if distance_to_object(player_obj) < 2{
		movespeed = 0;
		hsp = 0;
		vsp = 0;
	}
}
else{
	movespeed = 0;
	hsp = 0;
	vsp = 0;
}

		x += hsp;
		y += vsp;