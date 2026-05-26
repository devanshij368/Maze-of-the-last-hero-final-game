/// @description Insert description here
// You can write your code in this editor

// open door if playerpresses E near it 

if (point_distance(x, y, obj_player.x, obj_player.y) < 40)
{
	if (keyboard_check_pressed(ord("E")))
	{
		if (obj_player.keys > 0)
		{
			obj_player.keys -= 1;
			instance_destroy(); // door opens 
		}
	}
}




