//scr_chr_move_to_stand (ship_part)
//pull up the list of empty stand points and find the closest
var ship_part = argument0;
var clicked_x = argument1;
var clicked_y = argument2;

var num_of_empty = ds_list_size(ship_part.empty_stand_list);
var closest_stand;
var min_dist = 99999;
for (var i=0;i<num_of_empty;i++){
	var stand = ship_part.empty_stand_list[| i];
	var dist = point_distance(clicked_x,clicked_y,stand.x,stand.y);
	if (dist<min_dist){
		closest_stand = stand;
		min_dist = dist;
	}
}
		
//move to the closest stand
dest_x = closest_stand.x;
dest_y = closest_stand.y;
current_stand = closest_stand;
with (closest_stand){
	event_user(1);
	occupier = other.id;
}
if mp_grid_path(ship_grid, chr_move_path, x, y, dest_x, dest_y, true){
	path_start(chr_move_path, spd, path_action_stop, false);
}
state = "moving";
