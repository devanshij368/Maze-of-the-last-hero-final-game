/// @description Insert description here
// You can write your code in this editor

if (place_meeting(x, y, obj_player))
{
    if (keyboard_check_pressed(ord("E")))
    {
        obj_player.hp += 0.5;

        if (obj_player.hp > obj_player.max_hp)
        {
            obj_player.hp = obj_player.max_hp;
        }

        instance_destroy();
    }
}




