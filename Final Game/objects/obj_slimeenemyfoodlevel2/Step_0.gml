

// 1. DEATH + DROP

if (room == Room2)
{
    if (hp <= 0)
    {
        instance_create_layer(x, y, "Instances", obj_food);
        instance_destroy();
        exit; // stop code after death
    }
}


// 2. SIMPLE MOVEMENT


if (instance_exists(obj_player))
{
    var dist = point_distance(x, y, obj_player.x, obj_player.y);

    // CHASE if close
    if (dist < 120)
    {
        x += lengthdir_x(1, point_direction(x, y, obj_player.x, obj_player.y));
        y += lengthdir_y(1, point_direction(x, y, obj_player.x, obj_player.y));
    }
    else
    {
        // RANDOM MOVE
        x += choose(-0.5, 0.5);
        y += choose(-0.5, 0.5);
    }
}