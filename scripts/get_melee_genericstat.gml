var melee_id=argument0;
var stat_id=argument1;

if instance_number(obj_meleestatshandler)<=0
{
instance_create(0,0,obj_meleestatshandler);
}
var array= obj_meleestatshandler.meleestats;
if is_string(melee_id)
{
var grab_id=array_match(array,melee_id,0);
    if grab_id==-1
    {
    return 0;
    show_debug_message('error occurred in get_melee_genericstat, could not find entry for '+string(melee_id));
    }
    else
    {
    return array[grab_id,stat_id];
    }
}
else
{
    return array[melee_id,stat_id];
}



