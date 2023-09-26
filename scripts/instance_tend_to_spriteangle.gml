var inst=argument0;
var target_spriteangle=argument1;
var smoothing=argument2;

if smoothing>=1
{
smoothing=0.999;
}
if smoothing<0
{
smoothing=0;
}

if smoothing==0
{
inst.spriteangle=target_spriteangle;
}
else
{
var inst_spriteangle=inst.spriteangle;

var angle_diff = angle_difference(target_spriteangle,inst_spriteangle );

inst.spriteangle += angle_diff *(1-smoothing);
}
