//draw the selection box, if no button is pressed
if mouse_check_button(mb_left) and !place_meeting(mouse_x,mouse_y,obj_bt){
	draw_set_color(c_green);
	draw_rectangle(box_anchor_x,box_anchor_y,box_free_x,box_free_y,true);
}