//when pressed on an icon, make a copy of it
if is_icon{
	//create a preview
	var new_preview = instance_create_layer(mouse_x-sprite_width/2,mouse_y-sprite_height/2,layer,self.object_index);
	with (new_preview){
		is_icon = false;
		is_selected = false;
		is_dragged = true;
	}
}
//when pressed on a preview
else{
	is_selected = true;
	is_dragged = true;
}