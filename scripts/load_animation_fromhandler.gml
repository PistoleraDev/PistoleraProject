var animation_name=argument0;


if instance_number(obj_animation_handler)<1
{
instance_create(0,0,obj_animation_handler);
    with obj_animation_handler
    {
    event_perform(ev_create,0);
    }
}

var inst_handler=instance_find(obj_animation_handler,0);

var index=array_match(inst_handler.animations,animation_name,0)

if index<>-1
{
return string_toarray(inst_handler.animations[index,1]);
}
else
{
return 0;
}
