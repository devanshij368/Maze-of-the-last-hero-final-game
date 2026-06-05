
// FIRST TIME CHECKPOINT ONLY

if (!active)
{
    active = true;

    // SAVE RESPAWN POSITION
    other.respawn_x = other.x;
    other.respawn_y = other.y;
}

// LEVEL 1 CHECK

if (room == Room1)
{
    if (other.keys_collected >= other.keys_needed)
    {
        other.level_complete = true;
    }
    else
    {
        if (other.message_cooldown <= 0)
        {
            show_message("Collect all keys first!");
            other.message_cooldown = 120; // 2 seconds cooldown
        }
    }
}