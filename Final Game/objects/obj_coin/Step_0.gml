/// @description Insert description here
// You can write your code in this editor

if (place_meeting(x, y, obj_player))
{
    if (keyboard_check_pressed(ord("E")))
    {
        obj_player.coin_count += 1;

        instance_destroy();
    }
}




