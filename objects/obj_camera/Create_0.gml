/// @description Insert description here
// You can write your code in this editor


camoriginx = room_width/2 + 256;
camoriginy = room_height/2 + 256;

camlookx = room_width/2;
camlooky = room_height/2;

camheight = 64;

camx = camoriginx;
camy = camoriginy;

fov = 64;
 
cammovespeed = 4;
camlookspeed = cammovespeed/1.5;

camdirection = point_direction(camx, camy, camlookx, camlooky);
camradius = point_distance(camx, camy, camlookx, camlooky)