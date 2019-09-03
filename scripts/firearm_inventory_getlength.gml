
var length =  array_height_2d(firearm_inventory);

for (var i=0;i<array_height_2d(firearm_inventory);i++)
{
    if get_firearm_islong(firearm_inventory[i,0])
    {
    length+=1;
    }
}

return length;
