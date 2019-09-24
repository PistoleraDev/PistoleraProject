
    factionsWithSight=-1;
    for (var i=0;i<instance_number(obj_character);i++)
    {
    var inst = instance_find(obj_character,i)
        if !array_includes(factionsWithSight,inst.faction_id)
        {
            if !collision_line(x+sprite_width/2,y+sprite_height/2,inst.x,inst.y,obj_barrier_solid,false,true)
            {
                factionsWithSight= push_array(factionsWithSight,inst.faction_id);
            }
        }
    }

