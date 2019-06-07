//if the right click is within obj_ship part, and the current character is selected
if place_meeting (mouse_x,mouse_y,obj_ship_part) && selected{
	//set the state,destination, angle and move it
	state = "moving";
	dest_x = mouse_x;
	dest_y = mouse_y;
	var move_dir = point_direction(x,y,dest_x,dest_y);
	image_angle = move_dir;
	motion_set(move_dir,spd);
}