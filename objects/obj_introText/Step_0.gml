var advance = keyboard_check_pressed(vk_space);

if advance{
	image_index++;
	audio_play_sound(snd_cursor_move,1,false);
}
if image_index = 4 and advance{
	instance_create_layer(640,360,"Instances",obj_vessel);
}

if image_index = 8 and advance{
	audio_stop_all();	
	audio_play_sound(snd_cursor_move,1,false);
	instance_create_layer(0,0,"Instances",obj_fade_out_menuLoad);
    instance_destroy(self);
}