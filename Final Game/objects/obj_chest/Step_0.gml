/// @description Insert description here
// You can write your code in this editor


if (place_meeting(x, y, obj_player))
{
    if (obj_player.keys_collected >= obj_player.keys_needed)
    {
        if (keyboard_check_pressed(ord("E")))
        {
            instance_create_layer(x, y, "Instances", obj_crystal);
            instance_destroy();
        }
    }
}



