var firearm_id=argument0;
var stat_id=argument1;

if instance_number(obj_firearmstatshandler)<=0
{
instance_create(0,0,obj_firearmstatshandler);
}
var array= obj_firearmstatshandler.firearmstats
if is_string(firearm_id)
{
var grab_id=array_match(array,firearm_id,0);
    if grab_id==-1
    {
    return 0;
    show_debug_message('error occurred in get_firearm_genericstat, could not find entry for '+string(firearm_id));
    }
    else
    {
    return array[grab_id,stat_id];
    }
}
else
{
    return array[firearm_id,stat_id];
}



