//change stand point from unoccupied to occupied

var list_location = ds_list_find_index(mother_part.empty_stand_list,id);
	
//if the stand point is currently occupied
if list_location != -1{
	ds_list_delete(mother_part.empty_stand_list,list_location);
	//add to the full list
	ds_list_add(mother_part.full_stand_list,id);
	mother_part.current_num_occupier +=1; 
}
occupied = true