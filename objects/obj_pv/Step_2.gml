//if the preview is currently being dragged
if is_dragged{
	//if the preview is not within the grid, move about freely
	if x<grid_top_coord_x{
		x = mouse_x-sprite_width/2;
		y = mouse_y-sprite_height/2;
	}
	//else sap to grid
	else{
		var xx = ((mouse_x-sprite_width/2-grid_top_coord_x)div grid_w)*grid_h+grid_top_coord_x;
		var yy = ((mouse_y-sprite_height/2) div grid_h)*grid_h
		x = xx
		y = yy;
	}
}