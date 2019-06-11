//set up a grid for ships
if room == room_combat{
	layer = layer_get_id("Ship");
	ship_grid = mp_grid_create(0, 0, room_width div grid_w, room_height div grid_h, grid_w, grid_h);
}

//if the grid is in the construct room
else if room == room_construct{
	grid_top_coord_x = ((room_width div 5) div grid_w)*grid_w;
	ship_grid = mp_grid_create(grid_top_coord_x,0,room_width div grid_w, room_height div grid_h,grid_w,grid_h);
	
}