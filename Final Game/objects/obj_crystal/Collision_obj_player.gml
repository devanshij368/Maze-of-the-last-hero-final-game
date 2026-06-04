// Only activate once
if (!active)
{
    // Save player respawn position
    other.respawn_x = x;
    other.respawn_y = y;

    // Activate checkpoint
    active = true;

    // Show message
    message_timer = 120;
}