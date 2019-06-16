//rotate object

if mouse_check_button(mb_left) and !is_clicked{
	//with(obj_pv){
		if is_selected and is_dragged{
			var p_dist = point_distance(x,y,mouse_x,mouse_y);
			var p_dir = point_direction(mouse_x,mouse_y,x,y);
			x = mouse_x+lengthdir_x(p_dist,p_dir-90);
			y = mouse_y+lengthdir_y(p_dist,p_dir-90);
			offset_x = mouse_x-x;
			offset_y = mouse_y-y;
			image_angle -=90;
		}
	//}
}