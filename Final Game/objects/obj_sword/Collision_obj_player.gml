/// @description Insert description here
// You can write your code in this editor


if (keyboard_check_pressed(ord("E")))
{
    other.has_sword = true;
    other.sword_swings = 10;

    show_message("Sword Collected!");

    instance_destroy();
}



