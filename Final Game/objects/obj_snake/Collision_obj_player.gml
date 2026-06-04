// damage player
other.hp -= 10;

// screen shake
other.shake_timer = 10;

// knockback
if (other.x < x)
    other.x -= 20;
else
    other.x += 20;