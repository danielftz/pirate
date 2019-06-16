//if this is not a selector action 
if !is_clicked{
	//if this is a selected pv
	if is_selected and is_dragged{
		//flag determine whether a collision has occured with other pv
		var collided_with_other = place_meeting(x,y,obj_pv);
		var boundary_collision_left = collision_rectangle(0,0,grid_top_coord_x-1,room_height,self,true,false);
		var boundary_collision_right = collision_line(room_width+1,0,room_width+1,room_height,self,true,false);
		var boundary_collision_top = collision_line(grid_top_coord_x,-1,room_width,-1,self,true,false);
		var boundary_collision_bottom = collision_line(grid_top_coord_x,room_height+1,room_width,room_height+1,self,true,false);
		//if this is an initial pv
		if prev_x == 0{
			//if out of bounds of collided then destroy instance
			if boundary_collision_left != noone or boundary_collision_right != noone or boundary_collision_top != noone or boundary_collision_bottom != noone or collided_with_other{
				instance_destroy();
			}
			else{
				scr_pv_set_down();
			}
		}
		//if this is not an initial pv
		else{
			//only check collision of selected pv once
			if !all_collision_check{
				//check all selected and dragged
				with(obj_pv){
					if is_selected and is_dragged{
						//if a collision/out of bounds occured
						collided_with_other = place_meeting(x,y,obj_pv);
						boundary_collision_left = collision_rectangle(0,0,grid_top_coord_x-1,room_height,self,true,false);
						boundary_collision_right = collision_line(room_width+1,0,room_width+1,room_height,self,true,false);
						boundary_collision_top = collision_line(grid_top_coord_x,-1,room_width,-1,self,true,false);
						boundary_collision_bottom = collision_line(grid_top_coord_x,room_height+1,room_width,room_height+1,self,true,false);
						if boundary_collision_left != noone or boundary_collision_right != noone or boundary_collision_top != noone or boundary_collision_bottom != noone or collided_with_other{
							//a collision has been found
							collision_found = true;
							break;
						}
					}
				}
				//all checked
				all_collision_check = true;
			}
			if collision_found{
				x = prev_x;
				y = prev_y;
				image_angle = prev_angle;
				is_dragged = false;
			}
			else{
				scr_pv_set_down();
			}
			
		}
	}
}



////if not an icon
//if !is_clicked{
//	if !is_icon{
//		//if initial
//		if prev_x == 0{
//			if x<grid_top_coord_x{
//				instance_destroy();
//			}
//			else{
//				prev_x = x;
//				prev_y = y;
//				is_dragged = false;
//			}
//		}
//		//if draggin a preview
//		else{
//			// flag which indicates all dragged objects are placed in appr. position. 
//			var all_in_position = true;
//			//check all dragged and selected objects
//			with(obj_pv){
//				if !is_icon and is_dragged and is_selected{
//					if x<grid_top_coord_x{
//						all_in_position = false;
//						break;
//					}
//					var collision_check_pv = instance_place(x,y,other);
//					if collision_check_pv != noone{
//						all_in_position = false;
//						break;
//					}
//				}
//			}
//			with(obj_pv){
//				if !is_icon and is_dragged and is_selected and all_in_position{
//					prev_x = x;
//					prev_y = y;
//					prev_angle = image_angle;
//					is_dragged = false;
//				}
//				else if !is_icon and is_dragged and is_selected and !all_in_position{
//					x = prev_x;
//					y = prev_y;
//					image_angle = prev_angle;
//					is_dragged = false;
//				}
//			}
		
//		}
//	}
//}