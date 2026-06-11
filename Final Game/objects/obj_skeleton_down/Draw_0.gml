/// @description Insert description here
// You can write your code in this editor







// draw skeleton sprite first
draw_self();

// health bar background
draw_set_color(c_black);
draw_rectangle(x - 20, y - 30, x + 20, y - 25, false);

// health fill
draw_set_color(c_red);

var bar = (hp / max_hp) * 40;

draw_rectangle(x - 20, y - 30, x - 20 + bar, y - 25, false);

draw_set_color(c_white);