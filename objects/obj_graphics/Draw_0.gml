/// @description Insert description here
// You can write your code in this editor


var _x = 0;
var _y = 0;

for (var _i = 0; _i < 13; _i++) {
	
	for (var _j = 0; _j < 8; _j++) {
		
		_x = 96 + (_i*64)
		_y = 96 + (_j*64)
		
		draw_sprite_ext(spr_platform, 0, _x, _y, 1, 1, 0, c_white, 1)
	}
}

ds_list_sort(depthlist, false);

currentdepth = ds_list_find_value(depthlist, ds_list_size(depthlist) - 1);

for (var _i = 0; _i < ds_list_size(depthlist); _i++) {
	
	_x = real(string_split(ds_list_find_value(depthlist, _i), ",", true, 2)[1]);
	_y = real(string_split(ds_list_find_value(depthlist, _i), ",", true, 2)[2]);
	
	scr_render(_x, _y);
}