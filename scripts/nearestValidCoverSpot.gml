var inst = id;
if argument_count>0
{
inst=argument[0];
}

var shortestdist=99999999999;
var candidate = noone;
for (var i=0;i<instance_number(obj_coverspot);i++)
{
var coverspot = instance_find(obj_coverspot,i)
    if distance(coverspot)<shortestdist
    {
        if !is_array(coverspot.factionsWithSight)
        {
        candidate = coverspot;
        shortestdist=distance(coverspot);
        }
        else
        {
            var len = array_length_1d(coverspot.factionsWithSight)
            if len>1
            {
            }
            else if (coverspot.factionsWithSight[0] == inst.faction_id) || len<=0
            {
            candidate = coverspot;
            shortestdist=distance(coverspot);
            }
        }
    }
}

return candidate;
