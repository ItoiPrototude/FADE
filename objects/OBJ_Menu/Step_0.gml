var down, up, accept, back

down = keyboard_check_pressed(vk_down);
up = keyboard_check_pressed(vk_up);
accept = keyboard_check_pressed(vk_space);
back = keyboard_check_pressed(vk_shift);

if back{
	audio_play_sound(snd_back,1,false);
	instance_create_layer(x,y,"Instances",OBJ_game_start);
	instance_destroy(self);
}
if up{
	image_index--;
	audio_play_sound(snd_cursor_move,1,false);
}
if down{
	image_index++;
	audio_play_sound(snd_cursor_move,1,false);
}
if image_index = 0 and accept {
	audio_stop_all();
	audio_play_sound(snd_accept,1,false);
	instance_create_layer(0,0,"Instances",obj_fade_out_menu);
}

if image_index = 1 and accept {

	audio_play_sound(snd_accept,1,false);
	instance_create_layer(0,0,"Instances",obj_fade_out_menuLoad);
}

if image_index = 3 and accept {
	game_end();
}







// I JUST LOOOOOVVVEEE CORN!!!!!!!!!!!!!