
// MOVEMENT

walk_speed = 3;
dash_speed = 15;

facing = "down";


// HEALTH BAR 

hp = 100;
max_hp = 100;

damage_flash = 0;
shake_timer = 0;
hit_cooldown = 0;


// LEVEL / XP

xp = 0;
level = 1;
level_complete = false;


// RESPAWN 

respawn_x = x;
respawn_y = y;


// LEVEL 1 ITEMS

has_key = false;
keys = 0;

// LEVEL 3 ITEMS

coin_count = 0;


// STAMINA SYSTEM

stamina = 100;
stamina_max = 100;
stamina_regen = 1;


// SWORD SYSTEM (FIXED BUG)

has_sword = false;
sword_swings = 0;   // ❗ FIX: must be number, NOT false


// FIREBALL SYSTEM

has_fireball = false;
fireball_ammo = 0;