if (keyboard_check_pressed(ord("E")))
{
    if (other.level_complete)
    {
        // Spawn crystal
        instance_create_layer(x, y, "Instances", obj_crystal);

        // Remove chest
        instance_destroy();
    }
    else
    {
        show_message("Defeat all enemies first!");
    }
}