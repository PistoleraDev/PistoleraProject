var attachment_id=argument0; //REMEMBER: attachment_ids need to be unique per character model.
//also remember that the hierachy of attachments must match between the animation and character model.
var animation_name=argument1;

var animation=load_animation_fromhandler(animation_name);

var index=array_match(animation,attachment_id,0)

if index<>-1
{
return string_toarray(animation[index,1]);
}
else
{
return 0;
}
