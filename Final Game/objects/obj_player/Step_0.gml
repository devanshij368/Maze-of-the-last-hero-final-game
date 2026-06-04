
// 1. SPEED

var spd = walk_speed;

// SHIFT = dash
if (keyboard_check(vk_shift))
{
    spd = dash_speed;
}

// 2. MOVEMENT + SPRITES


// LEFT
if (keyboard_check(vk_left))
{
    x -= spd;
    facing = "left";

    if (room == Room2 && has_sword)
       sprite_index = spr_player_left_sword;
   else if (room == Room3 && has_fireball)
       sprite_index = spr_player_left_fireball;
    else
        sprite_index = spr_player_left;

    if (place_meeting(x, y, obj_wall)) x += spd;
}

// RIGHT
if (keyboard_check(vk_right))
{
    x += spd;
    facing = "right";

    if (room == Room2 && has_sword)
        sprite_index = spr_player_right_sword;
  else if (room == Room3 && has_fireball)
        sprite_index = spr_player_right_fireball;
    else
        sprite_index = spr_playerright;

    if (place_meeting(x, y, obj_wall)) x -= spd;
}

// UP
if (keyboard_check(vk_up))
{
    y -= spd;
    facing = "up";

    if (room == Room2 && has_sword)
       sprite_index = spr_player_up_sword;
    else if (room == Room3 && has_fireball)
       sprite_index = spr_player_up_fireball;
    else
        sprite_index = spr_playerup;

    if (place_meeting(x, y, obj_wall)) y += spd;
}

// DOWN
if (keyboard_check(vk_down))
{
    y += spd;
    facing = "down";

    if (room == Room2 && has_sword)
        sprite_index = spr_player_down_sword;
    else if (room == Room3 && has_fireball)
        sprite_index = spr_player_down_fireball;
    else
        sprite_index = spr_player_down;

    if (place_meeting(x, y, obj_wall)) y -= spd;
}


// 3. FIREBALL (LEVEL 3 ONLY)

if (room == Room3)
{
    if (has_fireball && fireball_ammo > 0)
    {
        if (mouse_check_button_pressed(mb_left))
        {
            var target = instance_position(mouse_x, mouse_y, obj_slimeenemy);

            if (target != noone)
            {
                var fb = instance_create_layer(x, y, "Instances", obj_fireball);

                fb.direction = point_direction(x, y, target.x, target.y);
                fb.speed = 10;

                fireball_ammo -= 1;

                if (fireball_ammo <= 0)
                    has_fireball = false;
            }
        }
    }
}

// 4. SWORD (LEVEL 2 ONLY)

if (room == Room2)
{
    if (has_sword)
    {
        if (keyboard_check_pressed(vk_space))
        {
            sword_swings -= 1;

            with (obj_slimeenemy)
            {
                if (point_distance(x, y, obj_player.x, obj_player.y) < 50)
                {
                    hp -= 15;
                }
            }

            if (sword_swings <= 0)
            {
                has_sword = false;
                sword_swings = 0;
            }
        }
    }
}

// 5. LEVEL 1 REQUIREMENT

if (room == Room1)
{
    if (has_key)
    {
        level_complete = true;
    }
}

// 6. DEATH SYSTEM

if (hp <= 0)
{
    x = respawn_x;
    y = respawn_y;
    hp = max_hp;
}


// 7. XP LEVEL UP (GLOBAL)

if (xp >= 100)
{
    xp = 0;
    level += 1;

    hp += 20;
    walk_speed += 0.5;
}

// 8. Screen Shake
if (shake_timer > 0)
{
    shake_timer -= 1;

    x += random_range(-2, 2);
    y += random_range(-2, 2);
}