var cam_x = camera_get_view_x(view_camera[0]);

layer_x("Near",cam_x*0.7);
layer_x("Stillnear",cam_x*0.8);
layer_x("Far",cam_x*0.9);
layer_x("Distant",cam_x*0.95);