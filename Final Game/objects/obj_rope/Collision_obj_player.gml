/// @description Insert description here
// You can write your code in this editor

if (keyboard_check_pressed(ord("E")))
{
    if (obj_player.keys_collected >= obj_player.keys_needed)
    {
        room_goto(Room5);
    }
    else
    {
        show_message("Collect all keys first!");
    }
}




