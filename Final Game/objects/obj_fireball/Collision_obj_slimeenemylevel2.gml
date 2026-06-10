// Damage enemy
other.hp -= 20;

// Enemy dies
if (other.hp <= 0)
{
    // Drop coin
    instance_create_layer(other.x, other.y, "Instances", obj_coin);

    other.instance_destroy();
}

// Destroy fireball
instance_destroy();