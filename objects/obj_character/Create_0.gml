//**characters are crews of a ship that can be moved with RTS control. 

//initialize
layer = layer_get_id("Characters");
spd = 2.5;
state = "idle";
selected = false;

chr_move_path = path_add();
path_set_kind(chr_move_path,true);
path_set_precision(chr_move_path,8);

//**these two features of the characers are currently unused
//**Ideally, the characters would automatically move to an empty stand point in the ship part
current_ship_part = -1;
current_stand = -1;

