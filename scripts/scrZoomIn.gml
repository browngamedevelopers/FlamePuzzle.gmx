//argument0 = zooming object
zoomid = argument0;
var zoomlevel = .98;
var zoomtime = 1;
var donezooming = 400;
var waittozoomout = 60;
if (zoomid != noone && zoomid != -1){
    /*view_visible[0]=0
    view_visible[1]=1
    
    view_object[1] = zoomid;*/
    //room_set_view(ind, vind, vis, xview, yview, wview, hview, xport, yport, wport, hport, hborder, vborder, hspeed, vspeed, obj);
    //room_set_view(room_get_name(room),1,1,view_xview[1],view_yview[1], view_wview[1], view_hview[1], view_xport[1],
    //view_yport[1],view_wport[1],view_hport[1],view_hborder[1], view_vborder[1], view_hspeed[1], view_vspeed[1], zoomid);
    view_wview[0] *= zoomlevel;
    view_hview[0] *= zoomlevel;
    view_object[0] = zoomid;
    //view_xview[0] = zoomid.x;
    //view_yview[0] = zoomid.y;
    //show_debug_message(view_wview[0]);
    if(view_wview[0] > donezooming){
        //show_message("more zoom!");
        alarm[0] = zoomtime;
        //scrZoomIn(zoomid);
    }else {
        //show_message("done zooming");
        alarm[1] = waittozoomout;
    }
}else {
    show_message("nothing found!");
}
