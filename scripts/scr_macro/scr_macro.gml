gml_pragma("global","scr_macro();");

//grid variables
globalvar ship_grid;

globalvar grid_w;
		grid_w = 16;
globalvar grid_h;
		grid_h = 16;
globalvar grid_top_coord_x;


//construct room flags
globalvar is_clicked;
	is_clicked = false;
globalvar all_collision_check;
	all_collision_check = false;
globalvar collision_found;
	collision_found = false;
	
globalvar ship_design_save_map;
	ship_design_save_map = ds_map_create();
