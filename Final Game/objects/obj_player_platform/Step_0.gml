// LEFT
if (keyboard_check(vk_left))
{
    x -= move_speed;

    sprite_index = spr_player_left;
    facing = "left";

    if (place_meeting(x, y, obj_floating) ||
        place_meeting(x, y, obj_platform) ||// || or 
        place_meeting(x, y, obj_wall))
    {
        x += move_speed;
    }
}


// RIGHT
if (keyboard_check(vk_right))
{
    x += move_speed;

    sprite_index = spr_playerright;
    facing = "right";

    if (place_meeting(x, y, obj_floating) ||
        place_meeting(x, y, obj_platform) ||
        place_meeting(x, y, obj_wall))
    {
        x -= move_speed;
    }
}


// GRAVITY
y_speed += gravity_force;


// JUMP
if (place_meeting(x, y + 1, obj_floating) ||
    place_meeting(x, y + 1, obj_platform) ||
    place_meeting(x, y + 1, obj_wall))
{
    if (keyboard_check_pressed(vk_space))
    {
        y_speed = jump_speed;
    }
}


// MOVE VERTICAL
y += y_speed;


// COLLISION WITH FLOOR / PLATFORMS
if (place_meeting(x, y, obj_floating) ||
    place_meeting(x, y, obj_platform) ||
    place_meeting(x, y, obj_wall))
{
    while (place_meeting(x, y, obj_floating) ||
           place_meeting(x, y, obj_platform) ||
           place_meeting(x, y, obj_wall))
    {
        y -= sign(y_speed);
    }

    y_speed = 0;
}