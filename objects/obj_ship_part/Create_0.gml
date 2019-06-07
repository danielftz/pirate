//**ideally each ship part would have several stand points, 
//**and obj_characters must be on one stand point at all points
//**similar to FTL

//set_layer
layer = layer_get_id("Ship");
var popup_layer = layer_get_id("Popup");
max_stand = 9;//maximum number of stand
stand_list = ds_list_create();//create a list of stands

//create stand points (9 for each obj_ship_part for now)
for (var i=1;i<4;i++){
	for (var j=1;j<4;j++){
		var stand_id = instance_create_layer(x+j*37,y+i*37,popup_layer,obj_ship_stand_point);
		ds_list_add(stand_list,stand_id);
		with(stand_id) mother_part = self.id;
	}
}
