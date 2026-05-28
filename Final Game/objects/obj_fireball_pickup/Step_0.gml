// Show prompt when near
if (point_distance(x, y, obj_player.x, obj_player.y) < 40)
{
    draw_text(x, y - 20, "Press E");

    if (keyboard_check_pressed(ord("E")))
    {
        obj_player.has_fireball = true;

        // ADD +2 ammo EACH TIME you collect
        obj_player.fireball_ammo += 2;

        instance_destroy();
    }
}