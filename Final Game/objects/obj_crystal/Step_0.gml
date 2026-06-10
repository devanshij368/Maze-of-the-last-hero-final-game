/// @description Insert description here
// You can write your code in this editor


if (place_meeting(x, y, obj_player))
{
    if (keyboard_check_pressed(ord("E")))
    {
        //obj_player.crystals_collected += 1;

        show_message("You collected the crystal!");

        room_goto(Room2);

        instance_destroy();
    }
}



