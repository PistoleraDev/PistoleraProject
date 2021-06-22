var anim = argument0;

if ds_map_exists(anim,'end')
{
ds_map_replace(anim,'end',true);
}
else
{
ds_map_add(anim,'end',true);
}
