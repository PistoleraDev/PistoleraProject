
if (doorMomentum==0)
{
return 0;
}

var momentumChange=15*global.delta;

doorMomentum -= momentumChange*sign(doorMomentum);

spriteangle+= momentumChange*sign(doorMomentum);

var f =0;
