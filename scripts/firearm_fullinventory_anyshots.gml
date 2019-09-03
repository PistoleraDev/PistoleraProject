var firearm_next = firearm_inventory_peeknext();

if firearm_next[0]>-1 && firearm_next[1]>0
{
return true;
}
if firearm_L[0]>-1 && firearm_L[1]>0
{
return true;
}
if firearm_R[0]>-1 && firearm_R[1]>0
{
return true;
}


return false;
