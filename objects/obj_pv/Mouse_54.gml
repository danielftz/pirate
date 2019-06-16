//**currently with issues, uncomment when fixed

//// if an initial preview of wall blk is being moved around
//if is_selected and is_dragged and prev_x == 0 and x>= grid_top_coord_x{
//	var no_obstruct = collision_rectangle(x,y,x+sprite_width-1,y+sprite_height-1,obj_pv,true,true);
//	if no_obstruct == noone{
//		var self_angle = image_angle;
//		with (instance_create_layer(x,y,layer,object_index)){
//			image_angle = self_angle;
//			is_icon = false;
//			scr_pv_set_down();			
//		}
//	}
//}