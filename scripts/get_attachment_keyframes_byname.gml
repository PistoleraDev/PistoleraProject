var animation_array=argument0;
var attachment_id=argument1; //attachment_id values correspond to particular objects in the animation
//e.g. a character's arm, or firearm.
//duplicate attachment_ids in the same animation will cause undesirable effects.
//ensure that any character model is only comprised of unique attachments.
var keyframes=0;

if is_array(animation_array)
{

keyframes=string_toarray(animation_array[array_match(animation_array, attachment_id,0),1]);
return keyframes;


}
else return 0
