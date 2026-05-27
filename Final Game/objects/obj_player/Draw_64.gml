/// @description Insert description here
// You can write your code in this editor

// Stamina bar background 
draw_rectangle(20, 90, 220, 110, false);

// Stamina bar fill 
draw_rectangle(20, 90, 20 + stamina * 2, 110, false);

// Text 
draw_text(20, 115, "Stamina");


// Level complete message

if (level_complete)
{
    draw_text(250, 200, "LEVEL COMPLETE");
    draw_text(220, 240, "Press ENTER for next level");
}

