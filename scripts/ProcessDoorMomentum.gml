
if sign(previousMomentum)<>sign(doorMomentum)
{
doorMomentum=0;
}

if (doorMomentum==0)
{
return 0;
}

var momentumChange=15*global.delta;

doorMomentum -= momentumChange*sign(doorMomentum);

spriteangle+= momentumChange*sign(doorMomentum);

    if (spriteangle>maxSwing)
    {
    spriteangle=maxSwing;
    }
    else if (spriteangle<-maxSwing)
    {
    spriteangle=-maxSwing;
    }

var f =0;
