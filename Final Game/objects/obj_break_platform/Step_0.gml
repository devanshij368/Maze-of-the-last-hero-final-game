/// @description Insert description here
// You can write your code in this editor

if (place_meeting(x, y - 1, obj_player))
{
    activated = true;
}

if (activated)
{
    timer -= 1;

    if (timer <= 0)
    {
        instance_destroy();
    }
}




