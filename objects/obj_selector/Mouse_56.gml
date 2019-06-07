var bx,by;
bx = box_anchor_x;
by = box_anchor_y;

//select all obj_charcter
with (obj_character){
	//set them all to be unselected first
	selected = false;
	//check for each obj_character whether they are in the selector box or not
	var collision_inst = collision_rectangle(bx,by,mouse_x,mouse_y,id,false,false);
	
	//if the obj_charcter is within the box then it is selected
	if collision_inst != noone{
		selected = true;
	}
}