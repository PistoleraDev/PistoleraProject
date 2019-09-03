var firearm_id=argument0;
var shots=argument1;
var index=array_height_2d(firearm_inventory)-1;
for (i=0; i<array_height_2d(firearm_inventory);i++)
{
    if firearm_inventory[i,1]<=0
    {
    index=i;  //sets index to squish into to the first discovered firearm in inventory with no shots remaining.
    break;
    }
}
if is_real(firearm_id)&&is_real(shots)
{
firearm_inventory=squish_array_2d(firearm_inventory,index,create_array(firearm_id,shots));
}
