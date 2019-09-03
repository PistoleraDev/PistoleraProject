var total_shots=0;

for (var i=0;i<array_height_2d(firearm_inventory);i++)
{
    total_shots+=firearm_inventory[i,1];
}

return total_shots;
