/// @description Insert description here
// You can write your code in this editor

// Check death 

if (hp <= 0)
{
	instance_destroy();
}


// Death check 
if (hp <= 0)
{
	obj_player.xp += 10; 
	instance_destroy();
}

// Level up system
if (xp >= 100)
{
    xp = 0;
    level += 1;

    // Make player stronger
    hp += 20;
    move_speed += 0.5;
}




