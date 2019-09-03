var in_x=argument[0];
var in_y=argument[1];
var obj=argument[2];

if instance_number(obj)<=0
{
return noone;
}

var min_range=999999;
var fact_id=-1;

if argument_count>3
{
var radius=argument[3];
min_range=radius;
}
if argument_count>4
{
var fact_id=argument[4];

}
else
{
fact_id = id.faction_id;
}


var closest_inst=noone;
var inst=noone;



for (i=instance_number(obj)-1;i>=0;i--)
{
    inst= instance_find(obj,i);
    var dist=point_distance(inst.x,inst.y,in_x,in_y)
    var chooseCandidate =false;
    if !inst.dead
    {
        if dist<min_range
        {
            if (fact_id<>inst.faction_id)
            {
            min_range=dist;
            closest_inst=inst;
            }
        }
    }
}


return closest_inst;
