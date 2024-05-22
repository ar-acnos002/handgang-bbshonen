/// @description Insert description here
// You can write your code in this editor


ds_list_clear(depthlist);
for (var _i = 0; _i < ds_list_size(buildlist); _i++) {
	
	var _x = real(string_split(ds_list_find_value(buildlist, _i), ",", true, 2)[0]);
	var _y = real(string_split(ds_list_find_value(buildlist, _i), ",", true, 2)[1]);
	
	var _distancetoplayer = point_distance(_x, _y, obj_camera.camx, obj_camera.camy);
	
	ds_list_add(depthlist, string(_distancetoplayer) + "," + string(_x) + "," + string(_y));
}