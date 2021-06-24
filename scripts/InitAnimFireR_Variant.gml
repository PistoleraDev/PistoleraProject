var duration = argument0;
var loop= argument1;
var variant= argument2;

switch(variant)
{
case 1: return InitAnimFireR_1(duration,loop);break;
case 2: return InitAnimFireR_2(duration,loop);break;
case 3: return InitAnimFireR_3(duration,loop);break;
case 4: return InitAnimFireR_4(duration,loop);break;
default: return InitAnimFireR_1(duration,loop);break;
}
