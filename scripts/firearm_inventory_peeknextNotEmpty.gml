//requires inventory array
//returns array object of firearm
if array_height_2d(firearm_inventory)>=1
{
    
    var length =  array_height_2d(firearm_inventory);
    
    for (var i=0;i<array_height_2d(firearm_inventory);i++)
    {
        if (firearm_inventory[i,1] >0)
        {
        var firearm=firearm_inventory[i,0];
        var shots=firearm_inventory[i,1];
        var array=create_array(firearm,shots);
        return array;
        }
    }
}

return create_array(-1,0); //return a gun which doesn't exist.



