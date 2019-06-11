//if didn't cick a button
if !place_meeting(mouse_x,mouse_y,obj_bt){
	//set the coord of corner that doesn't move
	box_anchor_x = mouse_x;
	box_anchor_y = mouse_y;

}


//**one option is to use draw_restangle to create the selection rectangle
//**the other option is to use obj_selector_box and search for collision
//instance_create_layer(mouse_x,mouse_y,layer_get_id("Popup"),obj_selector_box);