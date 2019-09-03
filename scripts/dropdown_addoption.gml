var value=argument[0];
var label=value;
if argument_count>1
{
label=argument[1];
}

if object_index==obj_dropdown
{
options=push_array(options,create_array(value,label));
}
