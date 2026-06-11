/// @description Insert description here
// You can write your code in this editor

if (place_meeting(x, y, obj_player))
{
    if (keyboard_check_pressed(ord("E")))
    {
		// Play eat sound 
		audio_play_sound(snd_eat, 1, false);
		
        obj_player.hp += 10;

        if (obj_player.hp > obj_player.max_hp)
        {
            obj_player.hp = obj_player.max_hp;
        }

        instance_destroy();
    }
}




