var character_id=argument0;
var stat_id=argument1;

if instance_number(obj_characterstatshandler)<=0
{
instance_create(0,0,obj_characterstatshandler);
}
var array= obj_characterstatshandler.characterstats
if is_string(character_id)
{
var grab_id=array_match(array,character_id,0);
    if grab_id==-1
    {
    return 0;
    show_debug_message('error occurred in get_character_genericstat, could not find entry for '+string(character_id));
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



