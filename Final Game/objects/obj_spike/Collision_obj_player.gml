// Damage player if cooldown is over
if (other.hit_cooldown <= 0)
{
    other.hp -= 2;
    other.shake_timer = 10;
    other.hit_cooldown = 30;

    // Push player away from spike
    other.x += sign(other.x - x) * 10;
    other.y += sign(other.y - y) * 10;
}