///animation, returns true if animation is still running, or false if animation is complete.

var part=argument0; //indicates what part is being animated. e.g. armL, armR, body, etc.
var anim_duration=argument1;
var anim_loop=argument2;
var keyframes=0;
var d_x=0;
var d_y=0;
var target_x=anim_x;
var target_y=anim_y;
var target_xscale=anim_xscale;
var target_yscale=anim_yscale;
var target_spriteangle=anim_spriteangle;
var current_keyframe=0;
var steps_taken=anim_duration-anim_countdown;


//keyframe progression definition
keyframes[0,0]=0.2; 
keyframes[1,0]=0.4; 
keyframes[2,0]=0.6;  
keyframes[3,0]=0.8; 
keyframes[4,0]=0.95;  
keyframes[5,0]=1; 

if anim_countdown>0
{
    for (var i=0;i<array_height_2d(keyframes);i++)
    {
    keyframes[i,1]=keyframes[i,0]*anim_duration;
    }
    
    diff=keyframes[current_keyframe,1]-(steps_taken);
    while diff<=0 && current_keyframe<array_height_2d(keyframes)
    {
    current_keyframe+=1;
    diff=keyframes[current_keyframe,1]-(steps_taken);
    }
    
    //keyframe definitions
    if part=='body'
        {
            switch (current_keyframe)
            {
            case 0:
                    target_x=0;
                    target_y=0;
                    target_spriteangle=20;
                    target_xscale=1;
                    target_yscale=1;
                break;
            case 1: 
                    target_x=0;
                    target_y=0;
                    target_spriteangle=30;
                    target_xscale=1;
                    target_yscale=1;
            case 2: 
                    target_x=0;
                    target_y=0;
                    target_spriteangle=20;
                    target_xscale=1;
                    target_yscale=1;
            case 3: 
                    target_x=0;
                    target_y=0;
                    target_spriteangle=10;
                    target_xscale=1;
                    target_yscale=1;
            case 4: 
                    target_x=0;
                    target_y=0;
                    target_spriteangle=0;
                    target_xscale=1;
                    target_yscale=1;
            }
        }    
    if part='weaponL'
        {
            switch (current_keyframe)
            {
            case 0:
                    target_x=0;
                    target_y=0;
                    target_spriteangle=0;
                    target_xscale=1;
                    target_yscale=1;
                    visible=false;
                break;
            }
        }    
    if part='weaponR'
        {
            switch (current_keyframe)
            {
            case 0:
                    target_x=0;
                    target_y=0;
                    target_spriteangle=30;
                    target_xscale=1;
                    target_yscale=1;
                    visible=true;
                break;
            case 1:
                    target_x=0;
                    target_y=0;
                    target_spriteangle=45;
                    target_xscale=1;
                    target_yscale=1;
                    visible=true;
                break;
            case 2:
                    target_x=0;
                    target_y=0;
                    target_spriteangle=0;
                    target_xscale=1;
                    target_yscale=1;
                    visible=true;
                break;
            case 3:
                    target_x=0;
                    target_y=0;
                    anim_spriteangle-=5*(360/room_speed);
                    target_xscale=1;
                    target_yscale=1;
                    visible=true;
                break;
            case 4:
                    target_x=0;
                    target_y=0;
                    anim_spriteangle-=5*(360/room_speed);
                    target_xscale=1;
                    target_yscale=1;
                    visible=true;
                break;
            case 5:
                    target_x=0;
                    target_y=0;
                    target_spriteangle=0;
                    target_xscale=1;
                    target_yscale=1;
                    visible=false;
                break;
            }
        }
    if part=='armL'
        {
            switch (current_keyframe)
            {
            case 0:
                    target_x=0;
                    target_y=0;
                    target_spriteangle=-45;
                    target_xscale=0.8;
                    target_yscale=1;
                break;
            case 1:
                    target_x=0;
                    target_y=0;
                    target_spriteangle=-55;
                    target_xscale=0.6;
                    target_yscale=1;
                break;
            case 2:
                    target_x=0;
                    target_y=0;
                    target_spriteangle=-45;
                    target_xscale=0.8;
                    target_yscale=1;
                break;
            case 3:
                    target_x=0;
                    target_y=0;
                    target_spriteangle=0;
                    target_xscale=0.5;
                    target_yscale=1;
                break;
            }
        }
    if part='armR'
        {
            switch (current_keyframe)
            {
            case 0:
                    target_x=0;
                    target_y=0;
                    target_spriteangle=45;
                    target_xscale=1;
                    target_yscale=1;
                break;
            case 1:
                    target_x=0;
                    target_y=0;
                    target_spriteangle=55;
                    target_xscale=0.8;
                    target_yscale=1;
                break;
            case 2:
                    target_x=0;
                    target_y=0;
                    target_spriteangle=45;
                    target_xscale=1;
                    target_yscale=1;
                break;
            case 3:
                    target_x=0;
                    target_y=0;
                    target_spriteangle=-45;
                    target_xscale=1;
                    target_yscale=1;
                break;
            case 4:
                    target_x=0;
                    target_y=0;
                    target_spriteangle=90;
                    target_xscale=1;
                    target_yscale=1;
                break;
            }
        }
    if part='head'
        {
            switch (current_keyframe)
            {
            case 0:
                    target_x=0;
                    target_y=0;
                    target_spriteangle=0;
                    target_xscale=1;
                    target_yscale=1;
                break;
            }
        }
    if part=='hat'
        {
            switch (current_keyframe)
            {
            case 0:
                    target_x=0;
                    target_y=0;
                    target_spriteangle=0;
                    target_xscale=1;
                    target_yscale=1;
                break;
            }
        }
    
    if diff<>0
    {
    d_x= (target_x-anim_x)/diff;
    d_y= (target_y-anim_y)/diff;
    d_rot=angle_difference(target_spriteangle,anim_spriteangle)/diff;
    d_xscale=(target_xscale-anim_xscale)/diff;
    d_yscale=(target_yscale-anim_yscale)/diff;
    }
     
    anim_x=anim_x+d_x;
    anim_y=anim_y+d_y;
    anim_xscale=anim_xscale+d_xscale;
    anim_yscale=anim_yscale+d_yscale;
    anim_spriteangle=anim_spriteangle+d_rot;
    anim_countdown-=1;
    return true;
}

if anim_loop || anim_countdown==-1
{
    if anim_countdown<=0
    {
    anim_countdown=anim_duration;
    return true;
    }
}
else if anim_countdown<=0
{
    return false;
}
