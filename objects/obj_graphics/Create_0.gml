/// @description Insert description here
// You can write your code in this editor


buildlist = ds_list_create();

ds_list_add(buildlist, string(room_width/2)+","+string(room_height/2 - 64))
ds_list_add(buildlist, string(room_width/2 + 64)+","+string(room_height/2 + 64))
ds_list_add(buildlist, string(room_width/2 - 64)+","+string(room_height/2 + 64))

depthlist = ds_list_create();

currentdepth = 0;