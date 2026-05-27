/// @description Insert description here
// You can write your code in this editor

// Draw enemy normally 
draw_self();

// Show E if player is close 
if (point_distance(x, y, obj_player.x, obj_player.y) < 40)
{
	draw_text(x, y - 20, "Press E");
}





