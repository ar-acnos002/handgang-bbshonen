// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_render(_x, _y){
	var _camposition;

	var _matrix;

	_camposition = point_direction(_x, _y-32, obj_camera.camx, obj_camera.camy)
	if (_camposition > 0 and _camposition < 180) {
	
		_matrix = matrix_build(_x, _y-32, 0, -90, 0, 0, 1, 1, 1);

		matrix_set(matrix_world, _matrix);

		draw_sprite(spr_wall, 0, 0, 0);
	}

	_camposition = point_direction(_x-32, _y, obj_camera.camx, obj_camera.camy)
	if (_camposition > 90 and _camposition < 270) {
	
		_matrix = matrix_build(_x-32, _y, 0, -90, 0, 90, 1, 1, 1);

		matrix_set(matrix_world, _matrix);

		draw_sprite(spr_wall, 0, 0, 0);
	}


	_camposition = point_direction(_x, _y+32, obj_camera.camx, obj_camera.camy)
	if (_camposition > 180 and _camposition < 360) {
	
		_matrix = matrix_build(_x, _y+32, 0, -90, 0, 0, 1, 1, 1);

		matrix_set(matrix_world, _matrix);

		draw_sprite(spr_wall, 0, 0, 0);
	}


	_camposition = point_direction(_x+32, _y, obj_camera.camx, obj_camera.camy)
	if ((_camposition > 270 and _camposition < 360) or (_camposition > 0 and _camposition < 90)) {
		_matrix = matrix_build(_x+32, _y, 0, -90, 0, 270, 1, 1, 1);

		matrix_set(matrix_world, _matrix);

		draw_sprite(spr_wall, 0, 0, 0)
	}

	matrix_set(matrix_world, matrix_build_identity());
}