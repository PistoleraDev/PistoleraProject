var length =  firearm_inventory_getlength();

if firearm_L[0]>-1
{
length+=1;
}
if firearm_R[0]>-1
{
length+=1;
}

//takes into account guns still in hand

return length;

