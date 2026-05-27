
// Current speed
var spd = walk_speed;

// Hold SHIFT to run
if (keyboard_check(vk_shift))
{
    spd = dash_speed;
	
}

// LEFT
if (keyboard_check(vk_left))
{
    x -= spd;
    sprite_index = spr_player_left;

    if (place_meeting(x, y, obj_wall))
    {
        x += spd;
    }
}

// RIGHT
if (keyboard_check(vk_right))
{
    x += spd;
    sprite_index = spr_playerright;

    if (place_meeting(x, y, obj_wall))
    {
        x -= spd;
    }
}

// UP
if (keyboard_check(vk_up))
{
    y -= spd;
    sprite_index = spr_playerup;

    if (place_meeting(x, y, obj_wall))
    {
        y += spd;
    }
}

// DOWN
if (keyboard_check(vk_down))
{
    y += spd;
    sprite_index = spr_player_down;

    if (place_meeting(x, y, obj_wall))
    {
        y -= spd;
    }
}

// Attack 
//if (keyboard_check_pressed(ord("E")))
//{
//	instance_create_layer(x + 32, y, "Instances", obj_sword);
//}


// Shoot fireball

if (has_fireball)
{
    if (keyboard_check_pressed(vk_space))
    {
        var fireball;

        fireball = instance_create_layer(x, y, "Instances", obj_fireball);

        // RIGHT
        if (facing == "right")
        {
            fireball.direction = 0;
        }

        // UP
        if (facing == "up")
        {
            fireball.direction = 90;
        }

        // LEFT
        if (facing == "left")
        {
            fireball.direction = 180;
        }

        // DOWN
        if (facing == "down")
        {
            fireball.direction = 270;
        }

        fireball.speed = 8;
    }
}


// Check if all enemies are gone 
if (instance_number(obj_slimeenemy) == 0)
{
	level_complete = true; // all enemies are dead 
}

// Go to next room

if (level_complete)
{
    if (keyboard_check_pressed(vk_enter))
    {
        room_goto_next();
    }
}
