/// @description Insert description here
// You can write your code in this editor


// simple left-right movement
x += move_speed * move_dir;

// turn around
if (place_meeting(x + move_dir, y, obj_wall))
{
    move_dir *= -1;
}



