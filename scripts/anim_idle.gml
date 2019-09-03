var part=argument[0]; 
if argument_count>1
{
var anim_duration=argument[1];
var anim_loop=argument[2];
//Not needed for this anim, but standardisation is good.
}

if part=='body'
{
anim_x=0;
anim_y=0;
anim_xscale=1;
anim_yscale=1;
anim_spriteangle=0;
return true;
}
if part=='weaponL'
{
anim_x=0;
anim_y=0;
anim_xscale=1;
anim_yscale=1;
anim_spriteangle=0;
visible=false;
return true;
}
if part=='weaponR'
{
anim_x=0;
anim_y=0;
anim_xscale=1;
anim_yscale=1;
anim_spriteangle=0;
visible=false;
return true;
}

if part=='armL'
{
anim_x=0;
anim_y=0;
anim_xscale=0.5;
anim_yscale=1;
anim_spriteangle=0;
return true;
}

if part=='armR'
{
anim_x=0;
anim_y=0;
anim_xscale=0.5;
anim_yscale=1;
anim_spriteangle=0;
return true;
}

if part=='head'
{
anim_x=0;
anim_y=0;
anim_xscale=1;
anim_yscale=1;
anim_spriteangle=0;
return true;
}
if part=='hat'
{
anim_x=0;
anim_y=0;
anim_xscale=1;
anim_yscale=1;
anim_spriteangle=0;
return true;
}
return false;
