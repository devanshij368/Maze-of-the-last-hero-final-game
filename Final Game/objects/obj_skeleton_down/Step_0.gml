// DEATH + DROP COIN

if (hp <= 0)
{
    instance_create_layer(x, y, "Instances", obj_coin);
    instance_destroy();
}


// MOVEMENT AI

if (instance_exists(obj_player))
{
    var dist = point_distance(x, y, obj_player.x, obj_player.y);


    // FOLLOW PLAYER
    if (dist < chase_range)
    {
        x += lengthdir_x(0.7, point_direction(x, y, obj_player.x, obj_player.y));
        y += lengthdir_y(0.7, point_direction(x, y, obj_player.x, obj_player.y));
    }


    // RANDOM MOVEMENT
    else
    {
        x += choose(-move_speed, move_speed);
        y += choose(-move_speed, move_speed);
    }
}