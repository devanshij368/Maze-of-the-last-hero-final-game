draw_self();

if (point_distance(x, y, obj_player.x, obj_player.y) < 40)
{
    if (obj_player.keys_collected >= obj_player.keys_needed)
    {
        draw_text(x - 20, y - 30, "Press E");
    }
    else
    {
        draw_text(x - 50, y - 30, "Need More Keys");
    }
}