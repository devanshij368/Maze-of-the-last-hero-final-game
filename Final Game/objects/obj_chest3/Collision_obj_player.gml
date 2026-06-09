if (keyboard_check_pressed(ord("E")))
{
    if (other.coin_count >= other.coins_needed)
    {
        instance_create_layer(
            x,
            y,
            "Instances",
            obj_crystal
        );

        instance_destroy();
    }
    else
    {
        show_message("Collect 5 coins first!");
    }
}