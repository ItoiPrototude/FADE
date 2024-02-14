//Health
switch (OBJ_Itoi.hp) {
	case 5:
	draw_sprite(spr_hud_health,0,x,y);
		break;
		
	case 4:
	draw_sprite(spr_hud_health,1,x,y);
		break;
	
	case 3:
	draw_sprite(spr_hud_health,2,x,y);
		break;
	
	case 2:
	draw_sprite(spr_hud_health,3,x,y);
		break;
	
	case 1:
	draw_sprite(spr_hud_health,4,x,y);
		break;
		
	case 0:
	draw_sprite(spr_hud_health,5,x,y);
		break;
}

//Armor
switch (OBJ_Itoi.armour) {
	case 3:
	draw_sprite(spr_hud_shield,0,x + 106,y + 73);
		break;
		
	case 2:
	draw_sprite(spr_hud_shield,1,x + 106,y + 73);
		break;
	
	case 1:
	draw_sprite(spr_hud_shield,2,x + 106,y + 73);
		break;
	
	case 0:
	draw_sprite(spr_hud_shield,3,x + 106,y + 73);
		break;
}

//Floor Counter
switch (OBJ_Itoi.currentFloor) {
	case 5:
	draw_sprite(spr_floor_counter,5,x,y + 615);
		break;
		
	case 4:
	draw_sprite(spr_floor_counter,4,x,y + 615);
		break;
	
	case 3:
	draw_sprite(spr_floor_counter,3,x,y + 615);
		break;
	
	case 2:
	draw_sprite(spr_floor_counter,2,x,y + 615);
		break;
	
	case 1:
	draw_sprite(spr_floor_counter,1,x,y + 615);
		break;
		
	case 0:
	draw_sprite(spr_floor_counter,0,x,y + 615);
		break;
}