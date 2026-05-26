// LEFT
if (keyboard_check(vk_left))
{
    x -= move_speed;
    sprite_index = spr_player_left;

    // Wall collision
    if (place_meeting(x, y, obj_wall))
    {
        x += move_speed;
    }
}

// RIGHT
if (keyboard_check(vk_right))
{
    x += move_speed;
    sprite_index = spr_player_right;

    // Wall collision
    if (place_meeting(x, y, obj_wall))
    {
        x -= move_speed;
    }
}

// UP
if (keyboard_check(vk_up))
{
    y -= move_speed;
    sprite_index = spr_player_up;

    // Wall collision
    if (place_meeting(x, y, obj_wall))
    {
        y += move_speed;
    }
}

// DOWN
if (keyboard_check(vk_down))
{
    y += move_speed;
    sprite_index = spr_player_down;

    // Wall collision
    if (place_meeting(x, y, obj_wall))
    {
        y -= move_speed;
    }
}

// Attack 
if (keyboard_check_pressed(ord("E")))
{
	instance_create_layer(x + 32, y, "Instances", obj_sword);
}
