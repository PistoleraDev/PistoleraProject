if argument_count<1
{
return 0;
}
else if argument_count==1
{
    var targetInst=argument[0];
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
else if argument_count>1
{
target_x=argument[0];
target_y=argument[1];
}

spriteangle=point_direction(x,y,target_x,target_y);
