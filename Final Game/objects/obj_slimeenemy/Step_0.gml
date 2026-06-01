// Enemy death
if (hp <= 0)
{
    obj_player.xp += 10;
    instance_destroy();
}

