var origin = id;
var target=noone;
if argument_count==1
{
target =argument[0];
}
if argument_count>1
{
origin=argument[0];
target = argument[1];
}

if instance_exists(target)
{
    return point_distance(origin.x,origin.y,target.x,target.y);
}





return -1;
