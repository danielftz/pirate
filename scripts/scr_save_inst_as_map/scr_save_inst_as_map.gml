///@desc scr_save_inst_as_map(instance_id,lead_x,lead_y) 
///saves the selected variables to ship_design_save_map

var instance = argument0;
var lead_x = argument1; //x of lead_part_pv
var lead_y = argument2;//y of lead_part_pv
var instance_map = ds_map_create();

instance_map[? "object_index"] = instance.object_index;
instance_map[? "image_angle"] = instance.image_angle;

//if it's the lead part(command room)
if instance.object_index == obj_ship_part_lead_pv{
	instance_map[? "x_rel_left"] = lead_x-grid_top_coord_x;
	instance_map[? "y"] = lead_y;
}

else{
	instance_map[? "x_rel_lead"] = instance.x-lead_x;
	instance_map[? "y_rel_lead"] = instance.y-lead_y;
}

return instance_map;