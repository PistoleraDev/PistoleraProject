//depends on object obj_controlshandler

if instance_number(obj_controlshandler)<=0
{
instance_create(0,0,obj_controlshandler);
}

return check_input_pressed(obj_controlshandler.input_weapon);

