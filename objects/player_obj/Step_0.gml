var bbox_side;

//sprite code
if(keyboard_check(ord("W"))){
	image_speed = 1;
	sprite_index = player_walkup_spr;	
	}
if(keyboard_check(ord("S"))){
	image_speed = 1;
	sprite_index = player_walkdown_spr;	
	}
if(keyboard_check(ord("D"))){
	image_speed = 1;
	sprite_index = player_walkleft_spr;	
	}
if(keyboard_check(ord("A"))){
	image_speed = 1;
	sprite_index = player_walkright_spr;	
	}
if (keyboard_check(ord("W"))) = false && (keyboard_check(ord("D"))) = false && (keyboard_check(ord("S"))) = false && (keyboard_check(ord("A"))) = false{
	image_speed = 0;
	image_index = 0;
}
if (keyboard_check(ord("W"))) && (keyboard_check(ord("S"))){
	image_speed = 0;
	image_index = 0;
}
if (keyboard_check(ord("A"))) && (keyboard_check(ord("D"))){
	image_speed = 0;
	image_index = 0;
}
//movment code
runbut = (keyboard_check(vk_shift));
leftbut = (keyboard_check(ord("D")));
rightbut = (keyboard_check(ord("A")));
downbut = (keyboard_check(ord("S")));
upbut = (keyboard_check(ord("W")));

hsp = (leftbut - rightbut) * (movspeed + runbut * 3.5);
vsp = (downbut - upbut) * (movspeed + runbut * 3.5);

if (hsp > 0) bbox_side = bbox_right; else bbox_side = bbox_left;
	if (tilemap_get_at_pixel(walls,bbox_side + hsp,bbox_top) != 0) || (tilemap_get_at_pixel(walls,bbox_side+hsp,bbox_bottom) != 0 ){
		if (hsp > 0) x = x - (x mod 32) + 31 - (bbox_right - x);
			else x = x - (x mod 32) -(bbox_left - x);
			hsp = 0;
	}
	x += hsp;
	if (vsp > 0) bbox_side = bbox_bottom; else bbox_side = bbox_top;
	if (tilemap_get_at_pixel(walls,bbox_left,bbox_side + vsp) != 0) || (tilemap_get_at_pixel(walls,bbox_right,bbox_side + vsp) != 0 ){
		if (vsp > 0) y = y - (y mod 32) + 31 - (bbox_bottom - y);
			else y = y - (y mod 32) - (bbox_top - y);
			vsp = 0;
	}
	y += vsp;

