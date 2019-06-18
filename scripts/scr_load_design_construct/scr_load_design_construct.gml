///@description scr_load_design_construct(json)

var json = argument0;
//destroy existing
with(obj_pv){
	if(!is_icon) instance_destroy();
}
var inst_list = json[? "instances"];

//the first in array is info about lead ship
var inst_var_map = inst_list[| 0];
var lead_x = inst_var_map[? "x_rel_left"];
var lead_y = inst_var_map[? "y"];

with(instance_create_layer(lead_x+grid_top_coord_x,lead_y,layer,obj_ship_part_lead_pv)){
	is_icon = false;
	prev_x = x;
	prev_y = y;
	image_angle = inst_var_map[? "image_angle"];
	prev_angle = image_angle;
}

for (var i=1;i<ds_list_size(inst_list);i++){
	inst_var_map = inst_list[| i];
	var object = inst_var_map[? "object_index"];
	var pv_x = inst_var_map[? "x_rel_lead"]+lead_x+grid_top_coord_x;
	var pv_y = inst_var_map[? "y_rel_lead"]+lead_y;
	with(instance_create_layer(pv_x,pv_y,layer,object)){
		is_icon = false;
		prev_x = x
		prev_y = y
		image_angle = inst_var_map[? "image_angle"];
		prev_angle = image_angle;
	}
}

ds_map_destroy(inst_var_map);
ds_list_destroy(inst_list);