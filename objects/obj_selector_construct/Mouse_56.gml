//only draw selection box when didnt click on a button or a preview

//if is_clicked
if is_clicked{
	var bx,by;
	bx = box_anchor_x;
	by = box_anchor_y;
	
	with (obj_pv){
		if !is_icon{
			//set all previews to be unselected first
			is_selected = false;
			//check for each obj_pv whether they are in the selector box or not
			var collision_inst = collision_rectangle(bx,by,mouse_x,mouse_y,id,false,false);
	
			//if the obj_pv is within the box then it is selected
			if collision_inst != noone{
				is_selected = true;
			}
		}
		
	}
	is_clicked = false;

}