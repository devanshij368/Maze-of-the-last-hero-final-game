/// PLAYER UI (simple version)


// LOW HP BLINK EFFECT

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

// STAMINA BAR


// background
draw_rectangle(20, 90, 220, 110, false);

// fill
draw_rectangle(20, 90, 20 + stamina * 2, 110, false);

// text
draw_text(20, 115, "Stamina");

// LEVEL COMPLETE MESSAGE

if (level_complete)
{
    draw_text(250, 200, "LEVEL COMPLETE");
    draw_text(220, 240, "Press ENTER");
}



// PLAYER STATS (top left)

draw_text(20, 20, "HP: " + string(hp));
draw_text(20, 40, "XP: " + string(xp));
draw_text(20, 60, "LEVEL: " + string(level));