//mp_grid_draw(ship_grid);

//if the current room is room_construct, draw the grid out
if room == room_construct{
	//mp_grid_draw(ship_grid);
	var cell_num_h = room_height div grid_h;
	var cell_num_w = (room_width - grid_top_coord_x) div grid_w;
	draw_set_color(c_white);
	draw_set_alpha(1);
	//draw horizontal grid lines
	for (var i = 0;i<=cell_num_h;i++){
		draw_line(grid_top_coord_x,i*grid_h,room_width,i*grid_h)
	}
	//draw vertical grid lines
	for (i = 0;i<=cell_num_w;i++){
		draw_line(grid_top_coord_x+i*grid_w,0,grid_top_coord_x+i*grid_w,room_height);
	}
}