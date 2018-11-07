//Movement Code
if(keyboard_check(ord("W"))){
	y -= movspeed;	
	image_speed = 1;
	sprite_index = player_walkup_spr;	
	}
if(keyboard_check(ord("S"))){
	y += movspeed;
	image_speed = 1;
	sprite_index = player_walkdown_spr;	
	}
if(keyboard_check(ord("D"))){
	x += movspeed;
	image_speed = 1;
	sprite_index = player_walkleft_spr;	
	}
if(keyboard_check(ord("A"))){
	x -= movspeed;
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