if (room == Room1)
{
    if (obj_player.keys_collected < 3)
    {
        obj_player.keys_collected += 1;
    }

    instance_destroy();
}

// ROOM2 
if (room == Room2)
{
    if (obj_player.keys_collected < 10)
    {
        obj_player.keys_collected += 1;
    }

    instance_destroy();
}