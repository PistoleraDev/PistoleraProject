var inst=argument0;
var target_x=argument1;
var target_y=argument2;
var smoothing=argument3;

var inst_x=inst.x;
var inst_y=inst.y;

if smoothing>=1
{
smoothing=0.99;
}
if smoothing<0
{
smoothing=0;
}

if smoothing==0
{
inst.x=target_x;
inst.y=target_y;
}
else
{
    if !(inst_x==target_x and inst_y==target_y)
    {
    
    var xdiff=target_x-inst_x;
    var ydiff=target_y-inst_y;
    
    inst.x+=(xdiff*(1-smoothing)) * global.delta;
    inst.y+=(ydiff*(1-smoothing)) * global.delta;
    }
}
