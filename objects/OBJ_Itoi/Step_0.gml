/// @desc Core player logic
// Get player inputs
var bbox_side;
keyLeft = keyboard_check(ord("A"));
keyRight = keyboard_check(ord("D"));
keyUp = keyboard_check(ord("W"));
keyDown = keyboard_check(ord("S"));
keyItem = keyboard_check_pressed(vk_control);

inputDirection = point_direction(0,0,keyRight-keyLeft,keyDown-keyUp);
inputMagnitude = (keyRight - keyLeft != 0) || (keyDown - keyUp != 0);

//Movement
hsp = lengthdir_x(inputMagnitude * walksp, inputDirection);
vsp = lengthdir_y(inputMagnitude * walksp, inputDirection);

PlayerCollision();

//Running
if keyboard_check_pressed(vk_shift) {

	walksp = walksp * 2;
}
if keyboard_check_released(vk_shift) {
	walksp = 3;

}
//Update Sprite Index
var _oldSprite = sprite_index;
if (inputMagnitude != 0)
{
	direction = inputDirection
	sprite_index = spriteRun;
} else sprite_index = spriteIdle;
if (_oldSprite != sprite_index) localFrame = 0

//Update Image Index
PlayerAnimateSprite();


//Invincibility Frames
if (invincible == true){
	
	invincible_timer--
	
	if (invincible_timer <= 0){   invincible = false; invincible_timer = 30;   }
	
}

// Back to Menu
if (keyboard_check(vk_escape)){
	audio_stop_all();
	audio_play_sound(snd_back,1,false);
	audio_play_sound(mus_menu,1,true);
	room_goto(1);
}

//Gun Stuff
if mouse_check_button(mb_right){
 spriteIdle = spr_itoi_aim_right
if (x < mouse_x)        // check if the player is left of the mouse
{
spriteIdle = spr_itoi_aim_right; // set the sprite to the one facing right
}
else
{
spriteIdle = spr_itoi_aim_lef; // set the sprite to the one facing left
}	

}
if mouse_check_button_pressed(mb_right){
	instance_create_layer(x +8 ,y - 30,"Instances",obj_gun);
	walksp = 0;
	audio_play_sound(snd_GunEquip,1,false);
}
if mouse_check_button_released(mb_right){
	instance_destroy(obj_gun);
	walksp = 3;
	audio_play_sound(snd_GunStow,1,false);
	spriteIdle = ItoiIdle;
}

instance_create_layer(31,31,"Instances_1",obj_hud);


//⠀⠀⠀   ⢀⣤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⢤⣤⣀⣀⡀⠀⠀⠀⠀⠀⠀
//⠀⠀  ⢀⡼⠋⠀⣀⠄⡂⠍⣀⣒⣒⠂⠀⠬⠤⠤⠬⠍⠉⠝⠲⣄ 
//⠀  ⢀⡾⠁⠀⠊⢔⠕⠈⣀⣀⡀⠈⠆⠀⠀⠀⡍⠁⠀⠁⢂⠀⠈⣷⠀⠀
//  ⣠⣾⠥⠀⠀⣠⢠⣞⣿⣿⣿⣉⠳⣄⠀⠀⣀⣤⣶⣶⣶⡄⠀⠀⣘⢦⡀
//⢀⡞⡍⣠⠞⢋⡛⠶⠤⣤⠴⠚⠀⠈⠙⠁⠀⠀⢹⡏⠁⠀⣀⣠⠤⢤⡕⠱⣷
//⠘⡇⠇⣯⠤⢾⡙⠲⢤⣀⡀⠤⠀⢲⡖⣂⣀⠀⠀⢙⣶⣄⠈⠉⣸⡄⠠⣠⡿
// ⠹⣜⡪⠀⠈⢷⣦⣬⣏⠉⠛⠲⣮⣧⣁⣀⣀⠶⠞⢁⣀⣨⢶⢿⣧⠉⡼⠁     learn to code you ignoramous
//⠀⠀⠈⢷⡀⠀⠀⠳⣌⡟⠻⠷⣶⣧⣀⣀⣹⣉⣉⣿⣉⣉⣇⣼⣾⣿⠀⡇⠀
//⠀⠀⠀⠈⢳⡄⠀⠀⠘⠳⣄⡀⡼⠈⠉⠛⡿⠿⠿⡿⠿⣿⢿⣿⣿⡇⠀⡇⠀
//⠀⠀⠀⠀⠀⠙⢦⣕⠠⣒⠌⡙⠓⠶⠤⣤⣧⣀⣸⣇⣴⣧⠾⠾⠋⠀⠀⡇⠀
//⠀⠀⠀⠀⠀⠀⠀⠈⠙⠶⣭⣒⠩⠖⢠⣤⠄⠀⠀⠀⠀⠀⠠⠔⠁⡰⠀⣧⠀
//⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠛⠲⢤⣀⣀⠉⠉⠀⠀⠀⠀⠀⠁⠀⣠⠏⠀
//⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠉⠛⠒⠲⠶⠤⠴⠒⠚⠁⠀⠀
