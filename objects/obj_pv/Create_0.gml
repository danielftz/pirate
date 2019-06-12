//set the object to be an icon

//whether the object is an icon
is_icon = true;

//initially only dragged and not selected 
is_selected = false;
//for a pv that is set down when clicked it is selected and dragged
is_dragged = false;

//offset from mouse coord to pv coord
offset_x = 0;
offset_y = 0;

//if the position is incorrect, snap back to previous position
prev_x = 0;
prev_y = 0;

layer = layer_get_id("ly_ship");
