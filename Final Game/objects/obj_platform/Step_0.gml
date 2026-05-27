/// @description Insert description here
// You can write your code in this editor

// Move platform 
// * multiplication sign
x += move_speed * direction;

// Change direction 
if (x > 600) 
{
	direction = -1; // moving right 
}

if (x < 200)
{
	direction = 1; // moving left // negative speed = left 
}





