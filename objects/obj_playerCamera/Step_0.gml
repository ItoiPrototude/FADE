if (follow != noone){
	x_to = follow.x;
	y_to = follow.y;	
}

x += (x_to - x)/25
y += (y_to - y)/25

camera_set_view_pos(cam,x-cam_w_half,y-cam_h_half);

//keep camera inside room
x = clamp(x,cam_w_half,room_width-cam_w_half);
y = clamp(y,cam_h_half,room_height-cam_h_half);



if (layer_exists("Distant")){
	layer_x("Distant",x/2)
}

if (layer_exists("Far")){
	layer_x("Far",x/4)
}

if (layer_exists("Stillnear")){
	layer_x("Stillnear",x/6)
}

if (layer_exists("Near")){
	layer_x("Near",x/8)
}

