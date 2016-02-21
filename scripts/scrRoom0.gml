//Connect Lamps:
cl0 = instance_find(objConnectLamp, 0);
cl1 = instance_find(objConnectLamp, 1);
//Bridges:
br0 = instance_position(256, 448, objBridge);
br1 = instance_find(objBridge, 1);

if (br0 != noone) {
show_debug_message("good");
}



if(cl0.on) {
    instance_activate_object(br0);
} else {
    instance_deactivate_object(br0);
}

if(cl1.on) {
    instance_activate_object(br1);
} else {
    instance_deactivate_object(br1);
}
