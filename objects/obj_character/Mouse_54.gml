//if the right click is within obj_ship part, and the current character is selected
if place_meeting (mouse_x,mouse_y,obj_ship_part) && selected{
	//set the state,destination
	//state = "moving";
	//dest_x = mouse_x;
	//dest_y = mouse_y;
	////var move_dir = point_direction(x,y,dest_x,dest_y);
	////image_angle = move_dir;
	////motion_set(move_dir,spd);
	
	////set the path to that destination
	
	//if mp_grid_path(ship_grid, chr_move_path, x, y, dest_x, dest_y, true){
	//	path_start(chr_move_path, spd, path_action_stop, false);
	//}
	//only schedule movement if there are empty stands available
	var ship_part = instance_place(mouse_x,mouse_y,obj_ship_part);
	if ship_part.current_num_occupier<ship_part.max_stand{
		//free self from current stand point
		with current_stand{
			event_user(0);
		}
	
		//find the designated ship part id
		scr_chr_move_to_stand(ship_part,mouse_x,mouse_y);
	}
}