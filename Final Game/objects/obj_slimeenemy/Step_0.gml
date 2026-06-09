if (room == Room2)
{
    if (hp <= 0)
    {
        instance_create_layer(x, y, "Instances", obj_key);
        instance_destroy();
    }
}