// Collect fireball magic

if (point_distance(x, y, obj_player.x, obj_player.y) < 40)
{
    if (keyboard_check_pressed(ord("E")))
    {
        obj_player.has_fireball = true;

        instance_destroy();
    }
}