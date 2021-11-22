/// @description Stats
draw_sprite(S_HealthBar,0,healthbar_x,healthbar_y);
draw_sprite_stretched(S_HealthPip,0,healthbar_x,healthbar_y,(hp/hpmax) *healthbar_width,healthbar_height);
draw_sprite(S_HealthBorder,0,healthbar_x,healthbar_y)