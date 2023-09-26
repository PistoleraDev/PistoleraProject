var angle=argument0;
var target_spriteangle=argument1;
var smoothing=argument2;

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
inst.spriteangle=target_spriteangle;
}
else
{
var inst_spriteangle=inst.spriteangle;

var angle_diff = angle_difference(inst_spriteangle, target_spriteangle);
inst.spriteangle -= abs(angle_diff) * sign(angle_diff) * (1-smoothing);
}
