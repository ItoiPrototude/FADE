/// @description Common Variables
image_speed = 0;
hsp = 0;
vsp = 0;
walksp = 3;

//Stats
damage = 5;
hp = 5;
armour = 3;
crit_chance = 0.1;
crit_damage = 8;
hpmax = 5;
armourMax = 3;
hpMax = 5;

currentFloor = 0;


//Invincibility Frames
invincible = false;
invincible_timer = 30;



//HUD Coordinates
healthbar_x = 2;
healthbar_y = 5;
//Shader Setup
handler = shader_get_uniform(Bloom,"intensity");


value = 0.24;

//Sprite Handler
spriteRun = ItoiWalk;
spriteIdle = ItoiIdle;

localFrame = 0;

//Tilemaps
tilemap = layer_tilemap_get_id(layer_get_id("Collisions"));