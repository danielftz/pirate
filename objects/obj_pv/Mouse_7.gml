////if draggin a preview around
//if !is_icon and is_selected and is_dragged {
//	//if the preview is not within grid
//	if x<grid_top_coord_x{
//		instance_destroy()
//	}
//	else{
//		//is_selected = false;
//		is_dragged = false;
//	}
		
//}

//if not an icon
if !is_icon{
	//if initial
	if prev_x == 0{
		if x<grid_top_coord_x{
			instance_destroy();
		}
		else{
			prev_x = x;
			prev_y = y;
			is_dragged = false;
		}
	}
	//if draggin a preview
	else{
		// flag which indicates all dragged objects are placed in appr. position. 
		var all_in_position = true;
		//check all dragged and selected objects
		with(obj_pv){
			if !is_icon and is_dragged and is_selected{
				if x<grid_top_coord_x{
					all_in_position = false;
					break;
				}
				var collision_check_pv = collision_rectangle(x,y,x+sprite_width-1,y+sprite_height-1,obj_pv,true,true);
				if collision_check_pv != noone{
					all_in_position = false;
					break;
				}
			}
		}
		with(obj_pv){
			if !is_icon and is_dragged and is_selected and all_in_position{
				prev_x = x;
				prev_y = y;
				is_dragged = false;
			}
			else if !is_icon and is_dragged and is_selected and !all_in_position{
				x = prev_x;
				y = prev_y;
				is_dragged = false;
			}
		}
		
	}
}