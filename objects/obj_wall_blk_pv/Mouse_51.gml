// if an initial preview of wall blk is being moved around and within grid
if is_selected and is_dragged and prev_x == 0 and x>= grid_top_coord_x{
	//if the position has no obstruction
	var no_obstruct = collision_rectangle(x,y,x+sprite_width-1,y+sprite_height-1,obj_pv,true,true);
	if no_obstruct == noone{
		//create a wall block
		with (instance_create_layer(x,y,layer,obj_wall_blk_pv)){
			is_icon = false;
			scr_pv_set_down();			
		}
	}
}