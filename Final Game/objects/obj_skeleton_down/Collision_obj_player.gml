if (other.hit_cooldown <= 0)
{
    other.hp -= 2;
    other.hit_cooldown = 60;
    other.shake_timer = 5;
}