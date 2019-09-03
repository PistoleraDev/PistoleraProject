//this function extrapolates a 'tween' state for an animated object,
//using the keyframe array supplied, and the given progress of the animation (0-1)



var keyframes=argument0;
var progress=argument1;

var step_down=-1;
var step_up=1.1;
var step_down_i=-1;
var step_up_i=-1;
for (var i=0;i<array_height_2d(keyframes);i++)
        {
            if keyframes[i,0]>step_down && keyframes[i,0]<=progress
            {
            step_down=keyframes[i,0];
            step_down_i=i;
            }
            if keyframes[i,0]<step_up && keyframes[i,0]>=progress
            {
            step_up=keyframes[i,0];
            step_up_i=i;
            }
        }

        if (step_down_i<>-1 && step_up_i<>-1)
        {
            if step_up==step_down
            {
            percentage_diff=0;
            }
            else
            {
            percentage_diff=(progress-step_down)/(step_up-step_down);
            }
        attach_point_x=keyframes[step_down_i,1] + ((keyframes[step_up_i,1]-keyframes[step_down_i,1])*percentage_diff);
        attach_point_y=keyframes[step_down_i,2] + ((keyframes[step_up_i,2]-keyframes[step_down_i,2])*percentage_diff);

        var angle_diff = angle_difference(keyframes[step_down_i,3], keyframes[step_up_i,3])*percentage_diff;
        attach_point_spriteangle= keyframes[step_down_i,3]- (abs(angle_diff) * sign(angle_diff));
        
        sprite_index=char_attachment_getsprite(character_id,keyframes[step_down_i,4]);
        
        image_xscale=keyframes[step_down_i,5]+((keyframes[step_up_i,5]-keyframes[step_down_i,5])*percentage_diff)
        image_yscale=keyframes[step_down_i,6]+((keyframes[step_up_i,6]-keyframes[step_down_i,6])*percentage_diff)
        }
        else if step_down_i<>-1
        {
        attach_point_x=keyframes[step_down_i,1];
        attach_point_y=keyframes[step_down_i,2];
        attach_point_spriteangle= keyframes[step_down_i,3];
        sprite_index=char_attachment_getsprite(character_id,keyframes[step_down_i,4]);
        image_xscale=keyframes[step_down_i,5];
        image_yscale=keyframes[step_down_i,6];
        }
    
