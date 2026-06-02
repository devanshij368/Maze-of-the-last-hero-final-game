/// @description Insert description here
// You can write your code in this editor

// Heal Players' hp 
other.hp += 20;

// Don't go over max hp 
if (other.hp > other.max_hp)
{
	other.hp = other.max_hp;
}
// Remove food
instance_destroy();





