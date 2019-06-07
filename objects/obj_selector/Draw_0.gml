//draw the selection box
if mouse_check_button(mb_left){
	draw_set_color(c_green);
	draw_rectangle(box_anchor_x,box_anchor_y,box_free_x,box_free_y,true);
}