/// @description Insert description here
// You can write your code in this editor


// RESET PLAYER PROGRESS
with (obj_player)
{
    hp = 100;
    max_hp = 100;

    keys_collected = 0;
    coin_count = 0;

    has_sword = false;
    has_fireball = false;

    fireball_ammo = 0;

    sword_swings = 0;

    walk_speed = 3;
}

// GO BACK TO LEVEL 1
room_goto(intro);




