var firearm_id=argument0;
var shots=argument1;

if is_real(firearm_id)&&is_real(shots)
{
firearm_inventory=push_array(firearm_inventory,create_array(firearm_id,shots));
}
