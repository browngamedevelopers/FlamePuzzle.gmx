
var zoomlevel = 1.02;
var zoomtime = 1;

view_wview[0] *= zoomlevel;
view_hview[0] *= zoomlevel;


if(view_xview[0] < 0){
    view_xview[0] = 0;
}
if(view_yview[0] < 0){
    view_yview[0] = 0;
}

if(view_xview[0] + view_wview[0] > room_width){
    view_xview[0] = room_width - view_wview[0];
}
if(view_yview[0] + view_hview[0] > room_height){
    view_yview[0] = room_height - view_hview[0];
}


if(view_wview[0] < room_width){
    //show_message("more zoom!");
    alarm[1] = zoomtime;
}else {
    view_wview[0] = room_width;
    view_hview[0] = room_height;
    //show_message("done zooming out!");
}

