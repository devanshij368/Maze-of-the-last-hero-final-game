// DAMAGE
other.hp -= 10;

// SCREEN SHAKE TRIGGER
other.shake_timer = 10;

// KNOCKBACK
if (other.x < x)
{
    other.x -= 20;
}
else
{
    other.x += 20;
}