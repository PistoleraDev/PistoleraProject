var animation_array=0;
var animation_name=get_string('Enter an animation id:','default_anim');
var attachment_inst=noone;


for (var i=0;i<instance_number(obj_keyframe_attachment);i++)
{

attachment_inst=instance_find(obj_keyframe_attachment,i);
//animation array 0=attachment_id (custom name of attachment) 1=keyframe array string of attachmetn 2=gamemaker id of instance, 3=gamemaker id of parent instance
animation_array=push_array(animation_array,create_array(attachment_inst.attachment_id, array_tostring(attachment_inst.keyframes),attachment_inst.id,attachment_inst.inst_parent.id));

}





save_to_ini('animations.ini','animations',animation_name,array_tostring(animation_array));
