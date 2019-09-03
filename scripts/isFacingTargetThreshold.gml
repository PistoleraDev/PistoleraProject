
var target=noone;
var observer= id;
var threshold = 1;
if argument_count==0
{
target=action_target;
}
if argument_count==1
{
target = action_target;
threshold = argument[0]
}
if argument_count==2
{
target = argument[0];
threshold = argument[1]
}
else if argument_count>2
{
observer = argument[0];
target = argument[1];
}
if !instance_exists(target)
{
return false;
}
if abs(angle_difference(point_direction(observer.x,observer.y,target.x,target.y),observer.spriteangle))<threshold
{
return true;
}
else
{
return false;
}

