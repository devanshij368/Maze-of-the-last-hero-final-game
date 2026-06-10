if (place_meeting(x, y, obj_player))
{
    if (keyboard_check_pressed(ord("E")))
    {
        if (obj_player.keys_collected >= 3)
        {
            instance_create_layer(x, y, "Instances", obj_crystal);

            instance_destroy();
        }
        else
        {
            show_message("Not enough keys!");
        }
    }
}