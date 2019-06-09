draw_self();
//draw circle when selected
if selected {
	draw_set_color(c_green);
	draw_circle(x,y,15,true);
}

//if state == "moving" and selected{
//	if mp_grid_path(ship_grid, chr_move_path, x, y, dest_x, dest_y, true){
//		draw_path(chr_move_path,x,y,false);
//	}
//}