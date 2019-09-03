var in_x=argument[0];
var in_y=argument[1];
var obj=argument[2];

if instance_number(obj)<=0
{
return noone;
}

var min_range=999999;
var clause = '';
var args=0;
if argument_count>3
{
var radius=argument[3];
min_range=radius;
}
if argument_count>4
{
var clause=argument[4];

}

if argument_count>5
{
    for (var i =5; i<argument_count; i++)
    {
    args[i-5]=argument[i];
    }
}
var closest_inst=noone;
var inst=noone;



for (i=instance_number(obj)-1;i>=0;i--)
{
    inst= instance_find(obj,i);
    var dist=point_distance(inst.x,inst.y,in_x,in_y)
    var chooseCandidate =false;
    if dist<min_range
    {
        if clause != ''
        {
            if is_array(args)
            {
            var temp = push_array(args,inst);
            chooseCandidate=script_execute(clause,temp);
            }
            else
            {
            args=0;
            args[0]=inst;
            chooseCandidate=script_execute(clause,args);
            }
        }
        else
        {
        chooseCandidate=true;
        }
        
        if chooseCandidate
        {
        min_range=dist;
        closest_inst=inst;
        }
    }
}


return closest_inst;
