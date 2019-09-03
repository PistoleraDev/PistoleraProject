//requires inventory array
//returns array object of firearm

if array_height_2d(firearm_inventory)>=1
{
var firearm=firearm_inventory[0,0];
var shots=firearm_inventory[0,1];
firearm_inventory=slice_array_2d(firearm_inventory,0);
var array=create_array(firearm,shots);

return array;
}
else
{
return create_array(-1,0); //return a gun which doesn't exist.
}


