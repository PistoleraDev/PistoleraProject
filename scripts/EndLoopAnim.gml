var anim = argument0;

if ds_map_exists(anim,'loop')
{
ds_map_replace(anim,'loop',false);
}
else
{
ds_map_add(anim,'loop',false);
}
