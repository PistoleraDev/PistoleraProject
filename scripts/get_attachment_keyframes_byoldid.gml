var animation_array=argument0;
var old_id=argument1;
var keyframes=0;

if is_array(animation_array)
{
var bleh=array_match(animation_array, old_id,2)

keyframes=string_toarray(animation_array[array_match(animation_array, old_id,2),1]);
return keyframes;


}
else return 0
