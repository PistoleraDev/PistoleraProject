
var target=noone;
var observer= id;
if argument_count==0
{
target=action_target;
}
if argument_count==1
{
target = argument[0];

}
else if argument_count>1
{
observer = argument[0];
target = argument[1];
}
if !instance_exists(target)
{
return false;
}
if point_direction(observer.x,observer.y,target.x,target.y)==observer.spriteangle
{
return true;
}
else
{
return false;
}

