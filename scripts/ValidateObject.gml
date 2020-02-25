var object = argument0;


if (object_index!=argument0 && !object_is_ancestor(object_index,argument0))
{
ReportError("script called from invalid object, expected " + object_get_name(argument0) + ", got " + object_get_name(object_index) + " ; ");
return false;
}
return true;
