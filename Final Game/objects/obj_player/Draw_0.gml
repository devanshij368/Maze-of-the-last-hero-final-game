/// @description Insert description here
// You can write your code in this editor


if (damage_flash > 0)
{
    draw_set_alpha(0.5);
    draw_set_color(c_red);
    draw_self();
    draw_set_alpha(1);
    draw_set_color(c_white);
}
else
{
    draw_self();
}



