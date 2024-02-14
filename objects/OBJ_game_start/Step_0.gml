if keyboard_check(vk_enter) {
	instance_create_layer(x,y,"Instances",Obj_Menu);
	audio_play_sound(snd_start,1,false);
	instance_destroy(self);
}