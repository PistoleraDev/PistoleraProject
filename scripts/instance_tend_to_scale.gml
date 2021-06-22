var inst=argument0;
var target_xscale=argument1;
var target_yscale=argument2;
var smoothing=argument3;

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
inst.image_xscale=target_xscale;
inst.image_yscale=target_yscale;
}
else
{
inst.image_xscale += (target_xscale-image_xscale)* (1-smoothing) * global.delta;
inst.image_yscale += (target_yscale-image_yscale)* (1-smoothing) * global.delta;
}
