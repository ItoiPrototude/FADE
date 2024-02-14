randomize()

//get tilemap id
var wall_map_id = layer_tilemap_get_id("Collisions");
//Set up grid
width = room_width div CELL_WIDTH;
height = room_height div CELL_HEIGHT;
grid = ds_grid_create(width, height);
ds_grid_set_region(grid, 0, 0, width, height, VOID);

//Create Controller
var controller_x = width div 2;
var controller_y = height div 2;
var controller_direction = irandom(3);
var steps = 2000;

var player_start_pos_x = controller_x * CELL_WIDTH + CELL_WIDTH / 2;
var player_start_pos_y = controller_y * CELL_HEIGHT + CELL_HEIGHT / 2;
instance_create_layer(player_start_pos_x, player_start_pos_y, "Instances", OBJ_Itoi);

var change_direction_odds = 1;

repeat (steps){
	grid[# controller_x, controller_y] = FLOOR;
	//Randomize Direction
	if (irandom(change_direction_odds) == change_direction_odds){
	controller_direction = irandom(3);
	}
	//Move Controller
	var x_direction = lengthdir_x(1, controller_direction * 90);
	var y_direction = lengthdir_y(1, controller_direction * 90);
	controller_x += x_direction;
	controller_y += y_direction;
	
	//Dont go outside grid
	if (controller_x < 2 || controller_x >= width -2){
		controller_x += -x_direction * 2;
	}

if (controller_y < 2 || controller_y >= height -2){
		controller_y += -y_direction * 2;
	}
}

for (var _y = 1; _y < height - 1; _y++){
	for (var _x = 1; _x < width - 1; _x++){
		if (grid[# _x, _y] != FLOOR) {
			var north_tile = grid[# _x, _y - 1] == VOID;
			var west_tile = grid[# _x - 1, _y] == VOID;
			var east_tile = grid[# _x + 1, _y] == VOID;
			var south_tile = grid[# _x, _y + 1] == VOID;
		
			var tile_index = NORTH * north_tile + WEST * west_tile + EAST * east_tile + SOUTH * south_tile + 1;
		
			if (tile_index == 1){
				grid[# _x, _y] = FLOOR;
				
				
			}
		}
	}
}

for (var _y = 1; _y < height - 1; _y++){
	for (var _x = 1; _x < width - 1; _x++){
		if (grid[# _x, _y] != FLOOR) {
			var north_tile = grid[# _x, _y - 1] == VOID;
			var west_tile = grid[# _x - 1, _y] == VOID;
			var east_tile = grid[# _x + 1, _y] == VOID;
			var south_tile = grid[# _x, _y + 1] == VOID;
		
			var tile_index = NORTH * north_tile + WEST * west_tile + EAST * east_tile + SOUTH * south_tile + 1;
		
			tilemap_set(wall_map_id, tile_index, _x, _y);
				
			
		}
	}
}