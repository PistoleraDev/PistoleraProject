var part=argument0; //indicates what part is being animated. e.g. armL, armR, body, etc.
var anim_duration=argument1;
var anim_loop=argument2;
var target_anim_x=0;
var target_anim_y=0;
var target_anim_xscale=1;
var target_anim_yscale=1;
var target_anim_rot=0;
var previous_anim_x=0;
var previous_anim_y=0;
var previous_anim_xscale=1;
var previous_anim_yscale=1;
var previous_anim_rot=0;
var keyframes=0;
var current_keyframe=0;
keyframes[0]=0.4; //define where keyframes exist on a 0 - 100% scale here.
keyframes[1]=1;

//function returns whether the animation has completed.


if anim_loop || anim_countdown==-1
{
    if anim_countdown<=0
    {
    anim_countdown=anim_duration;
    }
}


if anim_countdown>0
{
    var progress=(anim_duration-anim_countdown)/anim_duration
    while (progress>=keyframes[current_keyframe]) && current_keyframe<array_length_1d(keyframes)-1
        {
        current_keyframe+=1
        }
        
    //attachment cases, what keyframes are made, and what values exist
    if part='body'
    {
        switch (current_keyframe)
        {
        case 0:
                previous_anim_x=0;
                previous_anim_y=0;
                previous_anim_xscale=1;
                previous_anim_yscale=1;
                previous_anim_rot=0;
                target_anim_x=0;
                target_anim_y=0;
                target_anim_xscale=0;
                target_anim_yscale=0;
                target_anim_rot=90; 
            break;
        case 1:
                previous_anim_x=0;
                previous_anim_y=0;
                previous_anim_xscale=1;
                previous_anim_yscale=1;
                previous_anim_rot=90;
                target_anim_x=0;
                target_anim_y=0;
                target_anim_rot=0; 
            break;
        }
    }
    //attachment cases end
    
    
        if current_keyframe>0
        {
        diff=((keyframes[current_keyframe]-keyframes[current_keyframe-1])*anim_duration);
        }
        else
        {   
        diff=((keyframes[current_keyframe])*anim_duration);
        }
        
        d_x=(target_anim_x-previous_anim_x)/diff;
        d_y=(target_anim_y-previous_anim_y)/diff;
        d_rot=(target_anim_rot-previous_anim_rot)/diff;
        d_xscale=(target_anim_xscale-previous_anim_xscale)/diff;
        d_yscale=(target_anim_yscale-previous_anim_yscale)/diff;
        
        anim_x=anim_x+d_x;
        anim_y=anim_y+d_y;
        anim_xscale=anim_xscale+d_xscale;
        anim_yscale=anim_yscale+d_yscale;
        anim_spriteangle=anim_spriteangle+d_rot;
        anim_countdown-=1;
    return true;
}
else
{
return false; //return value indicates whether the animation is running or not.
}
