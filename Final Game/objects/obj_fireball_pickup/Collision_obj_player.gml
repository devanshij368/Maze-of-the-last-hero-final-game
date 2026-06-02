/// @description Insert description here
// You can write your code in this editor


// Press E to collect fireball
if (keyboard_check_pressed(ord("E")))
{
    other.has_fireball = true;
    other.fireball_ammo += 2;

    instance_destroy();
}

