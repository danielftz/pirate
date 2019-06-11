//if draggin a preview around
if !is_icon and is_selected and is_dragged {
	//if the preview is not within grid
	if x<grid_top_coord_x{
		instance_destroy()
	}
	else{
		is_selected = false;
		is_dragged = false;
	}
		
}