/// Moving and Shooting
#region Reset position and angle

sprite_index = spr_pistol_arm;
// Flip gun
if mouse_x > x image_yscale = 1;
else image_yscale = -1;
//lerp angle to mouse and kickback angle
mouse_angle -= angle_difference(mouse_angle,point_direction(x,y,mouse_x,mouse_y)) * 0.5;
knockback_angle -= angle_difference(knockback_angle,0) * 0.05;

image_angle = mouse_angle + knockback_angle;

x = lerp(x, ox, 0.05);
y = lerp(y, oy, 0.05);
#endregion

#region Shooting
if mouse_check_button_pressed(mb_left) {
	instance_create_layer(x,y,"Instances_1",obj_projectile, {
	spd : 12,
	image_angle : image_angle + random_range(-7,7)
	});
audio_play_sound(snd_pistol_fire,1,false,random_range(0.8,1),0,random_range(0.8,1));
}

#endregion