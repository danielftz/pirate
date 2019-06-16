
//when pressed on an icon, make a copy of it
all_collision_check = false;
collision_found = false;
if is_icon{
	//when clicked on an icon, release all obj_pv as unselected
	with (obj_pv){
		is_selected = false;
	}

	//create a preview
	var new_preview = instance_create_layer(mouse_x-sprite_width/2,mouse_y-sprite_height/2,layer,self.object_index);
	with (new_preview){
		offset_x = sprite_width/2;
		offset_y = sprite_height/2;
		is_icon = false;
		is_selected = true;
		is_dragged = true;
	}
}
//when pressed on a preview
else{
	//if the current pv is not selected, then clear all selection
	if !is_selected{
		with (obj_pv){
			is_selected = false;
		}
		offset_x = mouse_x-x;
		offset_y = mouse_y-y;
		is_selected = true;
		is_dragged = true;
	}
	//if the current pv is selected, set the offset of all selected 
	else{
		with (obj_pv){
			if is_selected{
				offset_x = mouse_x-x;
				offset_y = mouse_y-y;
				is_dragged = true;
			}
		}
		
	}
}