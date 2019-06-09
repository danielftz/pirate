//if the character is moving
if state == "moving"{
	//**position_meeting might not be the most appropriate function
	//**as the character doesn't move to the pin point location of the mouse pointer. 
	//**look into this one if you can
	//once the character has reached the destination,stop its movment and turn it to the right. 
	image_angle = direction;
	if position_meeting(dest_x,dest_y,self){
		speed = 0;
		image_angle = 0;
		state = "idle";
	}
}