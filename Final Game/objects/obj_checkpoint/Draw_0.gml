// Draw checkpoint sprite
draw_self();

// Show message above checkpoint
if (message_timer > 0)
{
    draw_text(x - 20, y - 30, "Saved!");
}