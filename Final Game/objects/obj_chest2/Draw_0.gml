draw_self();

if (point_distance(x, y, obj_player.x, obj_player.y) < 50)
{
    draw_text(x - 20, y - 30, "Press E");
}