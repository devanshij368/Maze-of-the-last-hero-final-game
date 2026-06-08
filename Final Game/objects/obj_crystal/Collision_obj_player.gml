

// LEVEL 1 CHECK

if (keyboard_check_pressed(ord("E")))
{
    other.crystals_collected += 1;

    show_message("Crystal Collected!");

    room_goto_next();

    instance_destroy();
}