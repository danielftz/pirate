/// @description if the load button is in 
var json = "";
if file_exists("ship_save.json"){
	var file = file_text_open_read("ship_save.json");
	while (!file_text_eof(file)){
		json += file_text_readln(file);
	}
	file_text_close(file);
}

if room == room_construct{
	scr_load_design_construct(json_decode(json));
}