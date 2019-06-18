///@description when left clicked, save positions and image angle of all non icon

if room == room_construct and instance_number(obj_ship_part_lead_pv) == 2{
	//check if leadpart is present and there is only one
	var json = scr_save_design_to_json();
	var file = file_text_open_write("ship_save.json");
	file_text_write_string(file,json);
	file_text_close(file);
	//url_open("ship_save.json");
}