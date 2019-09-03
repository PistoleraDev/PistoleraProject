var caller_inst = id;
if argument_count>0
{
caller_inst = argument[0];
}


var num_instances = instance_number(obj_character);
var target_inst = noone;
var candidate_inst = noone;
for (var i=0; i<num_instances i++; )
{

candidate_inst = instance_find(obj_character,i);

    if candidate_inst.faction_id <> caller_inst.faction_id
    {
        if target_inst == noone
        {
        target_inst = candidate_inst;
        }
        else
        {
            if point_distance(caller_inst.x,caller_inst.y,candidate_inst.x,candidate_inst.y) < point_distance(caller_inst.x,caller_inst.y,target_inst.x,target_inst.y)
            {
                target_inst = candidate_inst;
            }
        }
    }
}
