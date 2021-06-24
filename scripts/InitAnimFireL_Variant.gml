var duration = argument0;
var loop= argument1;
var variant= argument2;

switch(variant)
{
case 1: return InitAnimFireL_1(duration,loop);break;
case 2: return InitAnimFireL_2(duration,loop);break;
case 3: return InitAnimFireL_3(duration,loop);break;
case 4: return InitAnimFireL_4(duration,loop);break;
default: return InitAnimFireL_1(duration,loop);break;
}
