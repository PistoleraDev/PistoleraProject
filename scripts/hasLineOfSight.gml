
var target=noone;
var observer= id;
if argument_count==0
{
target=action_target;
}
if argument_count==1
{
target = argument[0];

}
else if argument_count>1
{
observer = argument[0];
target = argument[1];
}

if target==noone
{
return false;
}

if collision_line( observer.x+orbital_x(0,observer.sprite_width/2,observer.spriteangle), observer.y+orbital_y(0,observer.sprite_width/2,observer.spriteangle), target.x, target.y, obj_barrier_solid, false, true )
{
    return false;
}
if collision_line( observer.x-orbital_x(0,observer.sprite_width/2,observer.spriteangle), observer.y-orbital_y(0,observer.sprite_width/2,observer.spriteangle), target.x, target.y, obj_barrier_solid, false, true )
{
return false;
}
else
{
return true;
}
