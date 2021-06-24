var duration = argument0;
var loop= argument1;
var variant= argument2;

switch(variant)
{
case 1: return InitAnimAimR_1(duration,loop);break;
case 2: return InitAnimAimR_2(duration,loop);break;
case 3: return InitAnimAimR_3(duration,loop);break;
case 4: return InitAnimAimR_4(duration,loop);break;
default: return InitAnimAimR_1(duration,loop);break;
}
