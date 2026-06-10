if (other.hit_cooldown <= 0)
{
    other.hp -= 10;
    other.hit_cooldown = 60; // 1 second invincibility
    other.shake_timer = 10;
}