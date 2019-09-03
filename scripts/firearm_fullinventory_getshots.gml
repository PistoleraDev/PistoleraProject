var total_shots=firearm_inventory_getshots();

if firearm_L[0]>-1 && firearm_L[1]>0
{
total_shots+=1;
}
if firearm_R[0]>-1 && firearm_R[1]>0
{
total_shots+=1;
}


return total_shots;
