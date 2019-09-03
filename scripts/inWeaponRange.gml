
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

var weapon_range = 999;
with observer
{

        if firearm_L[0]>-1 
        {
        weapon_range=get_firearm_range(firearm_L[0]);
        }
        else if firearm_R[0]>-1 
        {
        weapon_range=get_firearm_range(firearm_R[0]);
        }
        else
        {
            var firearm = firearm_inventory_peeknext();
            if firearm[0]=-1
            {
            weapon_range=0;
            }
            else
            {
            weapon_range = get_firearm_range( firearm[0]);
            }
        }

}
if weapon_range*0.8>point_distance(observer.x,observer.y,target.x,target.y)
{
InWeaponRange=true;
}
if weapon_range*1.2<point_distance(observer.x,observer.y,target.x,target.y)
{
InWeaponRange=false;
}

return InWeaponRange
