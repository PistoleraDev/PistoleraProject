var animation_name=get_string('Enter animation id to load:','default_anim');
var animation_array=load_animation_fromfile(animation_name);

var attachment_inst=noone;
var base=instance_find(obj_keyframeedit_base,0);

with obj_keyframe
{
instance_destroy();

}
with obj_keyframe_attachment
{
instance_destroy();

}

for (var i=0;i<array_height_2d(animation_array);i++)
{


attachment_inst=instance_create(base.x,base.y,obj_keyframe_attachment);
attachment_inst.attachment_id=animation_array[i,0];
attachment_inst.old_id=animation_array[i,2];
attachment_inst.old_parent_id=animation_array[i,3];
attachment_inst.keyframes=get_attachment_keyframes_byoldid(animation_array,attachment_inst.old_id);
attachment_inst.inst_parent=base;


}




var inst_keyframeslider=obj_keyframeedit_handler.slide_anim_progress;
var slider_width=inst_keyframeslider.sprite_width;
var x_adjustment=1;
var inst_keyframe=noone;
var progression=0;
for (var i=0;i<array_height_2d(attachment_inst.keyframes);i++)
{
inst_keyframe=instance_create(x,y,obj_keyframe); //create a keyframe ui element on the progression to allow keyframes to be deleted.
progression=real(attachment_inst.keyframes[i,0]);
inst_keyframe.progression=progression;
inst_keyframe.x=inst_keyframeslider.x+(progression*slider_width);
inst_keyframe.y=inst_keyframeslider.y-0.5*sprite_height;
}


var parent
for (var i=0;i<instance_number(obj_keyframe_attachment);i++)
{
    attachment_inst=instance_find(obj_keyframe_attachment,i)
    for (var j=0;j<instance_number(obj_keyframe_attachment);j++)
    {
        parent=instance_find(obj_keyframe_attachment,j);
        if attachment_inst.old_parent_id==parent.old_id
        {
        attachment_inst.inst_parent=parent;
        }
    }
}
