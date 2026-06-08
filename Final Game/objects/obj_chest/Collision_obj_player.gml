if (keyboard_check_pressed(ord("E")))
{
    if (other.keys_collected >= other.keys_needed)
    {
        // Spawn crystal
        instance_create_layer(x, y, "Instances", obj_crystal);

        // Remove chest
        instance_destroy();
    }
    else
    {
        show_message("Collect all the keys first!");
    }
}