//**characters are crews of a ship that can be moved with RTS control. 

//initialize
layer = layer_get_id("Characters");
spd = 4;
state = "idle";
selected = false;

//**these two features of the characers are currently unused
//**Ideally, the characters would automatically move to an empty stand point in the ship part
current_ship_part = -1;
current_stand = -1;

