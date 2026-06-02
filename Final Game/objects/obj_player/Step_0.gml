
// Current speed
var spd = walk_speed;

// Left 
if (keyboard_check(vk_left))
{
	x -= spd;
	facing = "left";
	//if (has_sword)
	//{
	//	sprite_index = spr_player_left_sword;
	//}
	 if (has_fireball)
	{
		sprite_index = spr_player_left_fireball;
	}
	else
	{
		sprite_index = spr_player_left;
	}
	if (place_meeting(x, y, obj_wall))
	{
		x += spd;
	}
}

// Right 
if (keyboard_check(vk_right))
{
    x += spd;

    facing = "right";

    //if (has_sword)
    //{
      //  sprite_index = spr_player_right_sword;
    //}
    if (has_fireball)
    {
        sprite_index = spr_player_right_fireball;
    }
    else
    {
        sprite_index = spr_playerright;
    }

    if (place_meeting(x, y, obj_wall))
    {
        x -= spd;
    }
}

// UP
if (keyboard_check(vk_up))
{
    y -= spd;

    facing = "up";

   // if (has_sword)
   // {
   //     sprite_index = spr_player_up_sword;
   // }
     if (has_fireball)
    {
        sprite_index = spr_player_up_fireball;
    }
    else
    {
        sprite_index = spr_playerup;
    }

    if (place_meeting(x, y, obj_wall))
    {
        y += spd;
    }
}

// Down
if (keyboard_check(vk_down))
{
    y += spd;

    facing = "down";

   // if (has_sword)
   // {
   //     sprite_index = spr_player_down_sword;
    //}
    if (has_fireball)
    {
        sprite_index = spr_player_down_fireball;
    }
    else
    {
        sprite_index = spr_player_down;
    }

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

if (has_fireball && fireball_ammo > 0)
{
    if (mouse_check_button_pressed(mb_left))
    {
        var target;

        target = instance_position(mouse_x, mouse_y, obj_slimeenemy);

        if (target != noone)
        {
            var fireball;

            fireball = instance_create_layer(x, y, "Instances", obj_fireball);

            fireball.direction = point_direction(x, y, target.x, target.y);

            fireball.speed = 10;

            fireball_ammo -= 1;

            if (fireball_ammo <= 0)
            {
                has_fireball = false;
            }
        }
    }
}



// Level up system
if (xp >= 100)
{
    xp = 0;
    level += 1;

    hp += 20;
    walk_speed += 0.5;
}
// Damage 
if (damage_flash > 0)
{
    damage_flash -= 1;
}
// reduce cooldown over time
if (hit_cooldown > 0)
{
    hit_cooldown -= 1;
}

// Death code 
if (hp <= 0)
{
    x = respawn_x;
    y = respawn_y;

    hp = max_hp;
}

// Pick up sword
if (place_meeting(x, y, obj_sword))
{
    if (keyboard_check_pressed(ord("E")))
    {
        has_sword = true;
        sword_swings = 10;

        instance_destroy(obj_sword);

        show_message("Sword Collected!");
    }
}



// Sword attack
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
    }
}

// Sword destroy 
if (sword_swings <= 0)
{
	has_sword = false;
	sword_swings = 0;
	
}
if (!has_sword && !has_fireball)
{
    // return to normal sprite
    if (facing == "left") sprite_index = spr_player_left;
    if (facing == "right") sprite_index = spr_playerright;
    if (facing == "up") sprite_index = spr_playerup;
    if (facing == "down") sprite_index = spr_player_down;
}
// Complete level 2 
if (instance_number(obj_slimeenemy) == 0)
{
    level_complete = true;
}