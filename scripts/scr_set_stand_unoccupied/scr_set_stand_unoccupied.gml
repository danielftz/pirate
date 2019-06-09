var list_location;
list_location = ds_list_find_index(mother_part.full_stand_list,id);
	
//if the stand point is currently occupied
if list_location != -1{
	ds_list_delete(mother_part.full_stand_list,list_location);
	//addd to the empty list
	ds_list_add(mother_part.empty_stand_list,id);
	mother_part.current_num_occupier -=1; 
}

occupied = false;
visible = false;