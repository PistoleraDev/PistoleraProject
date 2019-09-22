
    factionsWithSight=-1;
    for (var i=0;i<instance_number(obj_character);i++)
    {
    var inst = instance_find(obj_character,i)
        if !array_includes(factionsWithSight,inst.faction_id)
        {
            if hasLineOfSight(inst)
            {
                factionsWithSight= push_array(factionsWithSight,inst.faction_id);
            }
        }
    }

