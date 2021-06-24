var duration = argument0;
var loop= argument1;
var variant= argument2;

switch(variant)
{
case 1: return InitAnimAimL_1(duration,loop);break;
case 2: return InitAnimAimL_2(duration,loop);break;
case 3: return InitAnimAimL_3(duration,loop);break;
case 4: return InitAnimAimL_4(duration,loop);break;
default: return InitAnimAimL_1(duration,loop);break;
}
