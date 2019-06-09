//if the character is idle
if state == "idle"{
	//check if the character is standing on a point
	if current_stand == -1 and current_ship_part != -1 {
		//only schedule movement if there are empty stands available
		if current_ship_part.current_num_occupier<current_ship_part.max_stand{
			scr_chr_move_to_stand(current_ship_part,x,y)
		}
	}
}
	
//if the character is moving
if state == "moving"{
	//ensure the character is moving in the right direction
	image_angle = direction;
	//stop when reach destination
	if position_meeting(dest_x,dest_y,self){
		speed = 0;
		image_angle = 0;
		state = "idle";
	}
}