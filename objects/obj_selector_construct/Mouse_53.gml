//only draw selection box when didnt click on a button or a preview
var collision_check_bt = collision_point(mouse_x,mouse_y,obj_bt,false,false);
var collision_check_pv = collision_point(mouse_x,mouse_y,obj_pv,false,false);

//if didn't cick a button

if collision_check_bt == noone and collision_check_pv == noone{
	//set the coord of corner that doesn't move
	is_clicked = true;
	box_anchor_x = mouse_x;
	box_anchor_y = mouse_y;
	
}


//**one option is to use draw_restangle to create the selection rectangle
//**the other option is to use obj_selector_box and search for collision
//instance_create_layer(mouse_x,mouse_y,layer_get_id("Popup"),obj_selector_box);