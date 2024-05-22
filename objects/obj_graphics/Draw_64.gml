/// @description Insert description here
// You can write your code in this editor


draw_set_color(c_black)

//draw_text(x, y, string(x) + ", " + string(y));
//draw_text(x, y+32, string(obj_camera.camlookx) + ", " + string(obj_camera.camlooky));
draw_text(x, y+32, string(room_width/2)+", "+string(room_height/2))
draw_text(x, y+64, string(obj_camera.camx) + ", " + string(obj_camera.camy));
draw_text(x, y+96, string(obj_camera.camdirection));
//draw_text(x, y+128, string(obj_construct.x) + ", " + string(obj_construct.y));
draw_text(x, y+160, string(currentdepth));