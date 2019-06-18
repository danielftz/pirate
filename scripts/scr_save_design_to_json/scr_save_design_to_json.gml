///@desc scr_save_design_to_json() saves obj_pv to json;, returns a json string

var list_instances = ds_list_create();

//give the x,y of current lead part
var lead_x,lead_y;
with (obj_ship_part_lead_pv){
	if !is_icon{
		lead_x = x;
		lead_y = y;
	}
}

//save all
with (obj_pv){
	//save to ship design save map
	if !is_icon{
		//if the object is not a lead part
		var instance_map = scr_save_inst_as_map(id,lead_x,lead_y);
		if object_index != obj_ship_part_lead_pv{
			ds_list_add(list_instances,instance_map);
			ds_list_mark_as_map(list_instances,ds_list_size(list_instances)-1);
		}
		else{
			ds_list_insert(list_instances,0,instance_map);
			ds_list_mark_as_map(list_instances,0);
		}
			
	}
}

var m = ds_map_create();
ds_map_add_list(m,"instances",list_instances);

var json = json_encode(m);
ds_map_destroy(m);

return json;