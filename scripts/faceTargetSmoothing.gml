var target_x=x;
var target_y=y;
var smoothing = 0;

if argument_count<2
{
return 0;
}
else if argument_count==2
{
    var targetInst=argument[0];
    smoothing=argument[1];
    if instance_exists(targetInst)
    {
        target_x=targetInst.x;
        target_y=targetInst.y;
    }
    else
    {
    return 0;
    }
}
else if argument_count>2
{
target_x=argument[0];
target_y=argument[1];
smoothing=argument[2];
}
instance_tend_to_spriteangle(id,point_direction(x,y,target_x,target_y),smoothing);


