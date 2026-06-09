x += move_speed * direction;

// bounce back smoothly
if (x >= start_x + range)
{
    x = start_x + range;
    direction = -1;
}

if (x <= start_x - range)
{
    x = start_x - range;
    direction = 1;
}