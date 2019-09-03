//requires inventory array
//returns array object of firearm

if array_height_2d(firearm_inventory)>=1
{
var firearm=-1;
var shots=0;
for (var i=array_height_2d(firearm_inventory)-1;i>=0;i--)
{
    
    firearm=firearm_inventory[i,0];
    shots=firearm_inventory[i,1];
        if shots<=0
        {
        firearm_inventory=slice_array_2d(firearm_inventory,i);
        break;
        }
        else
        {
        firearm=-1;
        shots=0;
        }

}
var array=create_array(firearm,shots);

return array;
}
else
{
return create_array(-1,0); //return a gun which doesn't exist.
}


