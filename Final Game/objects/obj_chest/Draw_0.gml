/// @description Insert description here
// You can write your code in this editor



draw_sprite(sprite_index, image_index, x, y);

if (point_distance(x, y, obj_player.x, obj_player.y) < 40)
{
    if (obj_player.keys_collected >= 3)
    {
        draw_text(x - 20, y - 40, "Press E");
    }
    else
    {
        draw_text(x - 40, y - 40, "Need 3 Keys");
    }
}


