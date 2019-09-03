if instance_number(obj_keyframeedit_handler)<=0
{
instance_create(x,y,obj_keyframeedit_handler);
}

var progression=obj_keyframeedit_handler.slide_anim_progress.value;
var inst_keyframeslider=obj_keyframeedit_handler.slide_anim_progress;
with obj_keyframe_attachment
{

keyframes=push_array(keyframes,create_array(progression,attach_point_x,attach_point_y,attach_point_spriteangle,sprite_id,image_xscale,image_yscale));
order_array_asc(keyframes,0);

}
var inst_keyframe=instance_create(x,y,obj_keyframe); //create a keyframe ui element on the progression to allow keyframes to be deleted.
inst_keyframe.progression=progression;
inst_keyframe.x=inst_keyframeslider.x+ (inst_keyframeslider.percentage*inst_keyframeslider.sprite_width);
inst_keyframe.y=inst_keyframeslider.y-0.5*sprite_height;


