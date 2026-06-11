/// PLAYER UI 
/*// CRYSTAL BAR

draw_set_color(c_black);
draw_rectangle(20, 240, 220, 260, false);

var crystal_bar =
    (crystals_collected / crystals_needed) * 200;

draw_set_color(c_aqua);

draw_rectangle(
    20,
    240,
    20 + crystal_bar,
    260,
    false
);

draw_set_color(c_white);

draw_text(
    20,
    265,
    "Crystals: " +
    string(crystals_collected) +
    " / " +
    string(crystals_needed)
);*/


// KEY PROGRESS BAR ONLY LEVEL 1 + LEVEL 2

if (room == Room1 || room == Room2)
{
    var max_keys = max(1, keys_needed);

    draw_set_color(c_black);
    draw_rectangle(20, 200, 220, 220, false);

    var clamped_keys = clamp(keys_collected, 0, max_keys);

    var bar = (clamped_keys / max_keys) * 200;

    draw_set_color(c_yellow);
    draw_rectangle(20, 200, 20 + bar, 220, false);

    draw_set_color(c_white);

    draw_text(
        20,
        225,
        "Keys: " + string(clamped_keys) + " / " + string(max_keys)
    );
}

if (hp <= 30)
{
    // flash red/white when low HP
    if (floor(current_time / 200) mod 2 == 0)
        draw_set_color(c_red);
    else
        draw_set_color(c_white);
}
else
{
    draw_set_color(c_white);
}


// HP BAR


// background bar
draw_rectangle(20, 140, 220, 160, false);

// filled bar (based on HP)
draw_rectangle(20, 140, 20 + (hp / max_hp) * 200, 160, false);

// HP text
draw_text(20, 165, "HP: " + string(hp));

// reset color
draw_set_color(c_white);

// warning text if low HP
if (hp <= 30)
{
    draw_text(20, 185, "LOW HEALTH!");
}

draw_set_color(c_black);
draw_rectangle(20, 90, 220, 110, false);

draw_set_color(c_aqua);
draw_rectangle(20, 90, 20 + (stamina / stamina_max) * 200, 110, false);

draw_set_color(c_white);
draw_text(20, 115, "Stamina");

// PLAYER STATS (top left)

//draw_text(20, 20, "HP: " + string(hp));
//draw_text(20, 40, "XP: " + string(xp));
//draw_text(20, 60, "LEVEL: " + string(level));

// Level 3
// Show coin progress in Level 3
if (room == Room3)
{
    draw_text(
        20,
        300,
        "Coins: " + string(coin_count) + " / " + string(coins_needed)
    );
}

