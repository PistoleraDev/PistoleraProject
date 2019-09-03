var progression=argument0;
var index=-1;
with obj_keyframe_attachment
{
index=array_match(keyframes,progression,0);
    if index<>-1
    {
    keyframes=slice_array_2d(keyframes,index);
    }
}
