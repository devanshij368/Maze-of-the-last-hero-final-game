draw_self();

if (point_distance(x, y, obj_player.x, obj_player.y) < 50)
{
    if (obj_player.keys_collected >= obj_player.keys_needed)
    {
        draw_text(x - 40, y - 30, "Press E to collect crystal");
    }
    else
    {
        draw_text(x - 40, y - 30, "Need more keys");
    }
}