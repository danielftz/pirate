//**ideally each ship part would have several stand points, 
//**and obj_characters must be on one stand point at all points
//**similar to FTL

//set_layer
layer = layer_get_id("Ship");
var popup_layer = layer_get_id("Popup");
max_stand = 9;//maximum number of stand
current_num_occupier = 9;//current number of occupiers INITIALL SET TO FULL
stand_list = ds_list_create();//create a list of stands
empty_stand_list = ds_list_create();//createa a list of empty stands
full_stand_list = ds_list_create();//create a list of full stands

//create stand points (9 for each obj_ship_part for now)
for (var i=1;i<4;i++){
	for (var j=1;j<4;j++){
		//INITIALLY SET TO FULL FOR ALL STAND POINTS
		var stand_id = instance_create_layer(x+j*37,y+i*37,popup_layer,obj_ship_stand_point);
		ds_list_add(stand_list,stand_id);
		ds_list_add(full_stand_list,stand_id);
		stand_id.mother_part = id;
	}
}
