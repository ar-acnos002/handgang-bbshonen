/// @description Insert description here
// You can write your code in this editor


camradius = point_distance(camx, camy, camlookx, camlooky);

var _camera = camera_get_active();

camera_set_view_mat(_camera, matrix_build_lookat(camx, camy, -camheight, camlookx, camlooky, -camheight, 0, 0, 1));
camera_set_proj_mat(_camera, matrix_build_projection_perspective_fov(fov, window_get_width()/window_get_height(), 1, room_width));

if (keyboard_check(vk_up) == true) {
	
	camx += dcos(camdirection)*cammovespeed;
	camy += -1*dsin(camdirection)*cammovespeed;
	
	camlookx += dcos(camdirection)*cammovespeed;
	camlooky += -1*dsin(camdirection)*cammovespeed;
}

else if (keyboard_check(vk_down) == true) {
	
	camx += dcos(camdirection+180)*cammovespeed;
	camy += -1*dsin(camdirection+180)*cammovespeed;
	
	camlookx += dcos(camdirection+180)*cammovespeed;
	camlooky += -1*dsin(camdirection+180)*cammovespeed;
}

if (keyboard_check(vk_left) == true) {
	
	camdirection += 1;
	camdirection = camdirection mod 360;
	
	camlookx = camx + (camradius*dcos(camdirection))
	camlooky = camy + (camradius*dsin(camdirection-180))
}

if (keyboard_check(vk_right) == true) {
	
	camdirection -= 1;
	camdirection += 360;
	camdirection = camdirection mod 360;
	
	camlookx = camx + (camradius*dcos(camdirection))
	camlooky = camy + (camradius*dsin(camdirection+180))
}