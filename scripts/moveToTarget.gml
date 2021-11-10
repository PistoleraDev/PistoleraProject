
var target=noone;
var moveSpeed=1;
if argument_count==0
{
target=move_target;
moveSpeed = walk_speed;
}
if argument_count==1
{
target = argument[0];
moveSpeed = walk_speed;

}
else if argument_count>1
{
target = argument[0];
moveSpeed = argument[1];
}

if canWalk() && instance_exists(target)
{
movement_state='walking';
return mp_path_to_instance(target,(moveSpeed/2)*global.delta);
}
else
{            
    if path_exists(path)
    {
    path_clear_points(path);
    return false;
    }
}

