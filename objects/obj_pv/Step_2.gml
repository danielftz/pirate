//if the preview is currently being dragged
if is_dragged and is_selected{
	//if the preview is not within the grid, move about freely
	if x<grid_top_coord_x{
		x = mouse_x-offset_x;
		y = mouse_y-offset_y;
	}
	//else snap to grid
	else{
		//if only one is selected
		//var only_one_selected = true;
		//with (other){
		//	if is_selected
		//}
		//if (!other.is_selected) var xx = ((mouse_x-grid_top_coord_x)div grid_w)*grid_h+grid_top_coord_x;
		//else{
		//	xx = ((mouse_x-offset_x-grid_top_coord_x)div grid_w)*grid_h+grid_top_coord_x;
			
		//}
		var xx = (round((mouse_x-offset_x-grid_top_coord_x)/ grid_w))*grid_h+grid_top_coord_x;
		var yy = ((mouse_y-offset_y) div grid_h)*grid_h
		x = xx
		y = yy;
	}
}
////after mouse release check if all_collision_is set
//if is_selected and !is_dragged and all_collision_check{
//	x = prev_x;
//	y = prev_y;
//	image_angle = prev_angle;
//}
//else if is_selected and !is_dragged and !all_collision_check{
//}