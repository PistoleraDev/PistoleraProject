//both of these should be ds_maps
var anim = argument0;
var parts =argument1;
var endOrLoop=false;

if (!ds_exists(anim,ds_type_map))
{
return false; //anim specified doesn't exist, assume animation is over.
}

var elapsed = ds_map_find_value(anim,'elapsed');
if (is_undefined(elapsed))
{
    ReportError('Anim object did not have key: elapsed');
    return false;
}

var duration = ds_map_find_value(anim,'duration');
if (is_undefined(elapsed))
{
    ReportError('Anim object did not have key: duration');
    return false;
}

var animEnd = ds_map_find_value(anim,'end');
if (is_undefined(animEnd))
{
    ReportError('Anim object did not have key: animEnd');
    return false;
}

if (animEnd)
{
//anim is completed.
return false;
}

var progress;
if (elapsed>duration)
{
progress=1;
endOrLoop=true;
}
else
{
progress = elapsed/duration;
}


//seek through keyframes in anim, and determine which two keyframes the animation is currently between.
var i =0;
var prevKeyFrame=0;
var prevKeyFrameNum=-1;
var NextKeyFrame=1;
var NextKeyFrameNum=0;
var keyFrame=0;
while (i<99)
{
keyFrame=ds_map_find_value(anim,'keyframe_'+string(i));

if (is_undefined(keyFrame))
{
break;
}

if (keyFrame<progress)
{
prevKeyFrame=keyFrame;
prevKeyFrameNum=i;
}
else
{
NextKeyFrame=keyFrame;
NextKeyFrameNum=i;
break;
}
i++;
}
//progress between the previous and next keyframe
var frameProgress=(progress-prevKeyFrame) /(NextKeyFrame-prevKeyFrame);



//animate each part available in parts ds map
var size, key;
i=0;

size = ds_map_size(parts);
key = ds_map_find_first(parts);
var part='';
var instanceId=noone;
for (i = 0; i < size; i++;)
   {
   if(i>0){key = ds_map_find_next(parts,key)};
   part=key;
   instanceId=ds_map_find_value(parts,key);
   
   if (!is_undefined(key)&&!is_undefined(part)&&!is_undefined(instanceId))
   {
       if !ds_map_exists(anim,part + '_xinit')
       {ds_map_add(anim,part + '_xinit',instanceId.anim_x);}
       if !ds_map_exists(anim,part + '_yinit')
       {ds_map_add(anim,part + '_yinit',instanceId.anim_y);}
       if !ds_map_exists(anim,part + '_xscaleinit')
       {ds_map_add(anim,part + '_xscaleinit',instanceId.anim_xscale);}
       if !ds_map_exists(anim,part + '_yscaleinit')
       {ds_map_add(anim,part + '_yscaleinit',instanceId.anim_yscale);}
       if !ds_map_exists(anim,part + '_spriteangleinit')
       {ds_map_add(anim,part + '_spriteangleinit',instanceId.anim_spriteangle);}
       if !ds_map_exists(anim,part + '_visibleinit')
       {ds_map_add(anim,part + '_visibleinit',instanceId.visible);}
       
       //find anim keys for each part and apply
       var prev_x=ds_map_find_value(anim,part + '_xinit');
       var next_x=prev_x;
       
       if ds_map_exists(anim,part + '_x_' + string(prevKeyFrameNum))
       {
        prev_x= ds_map_find_value(anim,part + '_x_' + string(prevKeyFrameNum));
       }
       if ds_map_exists(anim,part + '_x_' + string(NextKeyFrameNum))
       {
        next_x= ds_map_find_value(anim,part + '_x_' + string(NextKeyFrameNum));
        instanceId.anim_x= prev_x+((next_x-prev_x)*frameProgress); 
       }
       
       var prev_y=ds_map_find_value(anim,part + '_yinit');;
       var next_y=prev_y;
       
       if ds_map_exists(anim,part + '_y_' + string(prevKeyFrameNum))
       {
        prev_y= ds_map_find_value(anim,part + '_y_' + string(prevKeyFrameNum));
       }
       if ds_map_exists(anim,part + '_y_' + string(NextKeyFrameNum))
       {
        next_y= ds_map_find_value(anim,part + '_y_' + string(NextKeyFrameNum));
        instanceId.anim_y= prev_y+((next_y-prev_y)*frameProgress); 
       }
       
       
       var prev_xfactor=0;
       var next_xfactor=0;
       
       if ds_map_exists(anim,part + '_xfactor_' + string(prevKeyFrameNum))
       {
        prev_xfactor= ds_map_find_value(anim,part + '_xfactor_' + string(prevKeyFrameNum));
        prev_x = instanceId.sprite_height * prev_xfactor;
       }
       if ds_map_exists(anim,part + '_xfactor_' + string(NextKeyFrameNum))
       {
        next_xfactor= ds_map_find_value(anim,part + '_xfactor_' + string(NextKeyFrameNum));
        next_x = instanceId.sprite_height * next_xfactor;
        instanceId.anim_x= prev_x+((next_x-prev_x)*frameProgress); 
       }
       
       var prev_yfactor=0;
       var next_yfactor=0;
       
       if ds_map_exists(anim,part + '_yfactor_' + string(prevKeyFrameNum))
       {
        prev_yfactor= ds_map_find_value(anim,part + '_yfactor_' + string(prevKeyFrameNum));
        prev_y = instanceId.sprite_width * prev_yfactor;
       }
       if ds_map_exists(anim,part + '_yfactor_' + string(NextKeyFrameNum))
       {
        next_yfactor= ds_map_find_value(anim,part + '_yfactor_' + string(NextKeyFrameNum));
        next_y = instanceId.sprite_width * next_yfactor;
        instanceId.anim_y= prev_y+((next_y-prev_y)*frameProgress); 
       }
       
       
       var prev_spriteangle=ds_map_find_value(anim,part + '_spriteangleinit');
       var next_spriteangle=prev_spriteangle;
       
       if ds_map_exists(anim,part + '_spriteangle_' + string(prevKeyFrameNum))
       {
        prev_spriteangle= ds_map_find_value(anim,part + '_spriteangle_' + string(prevKeyFrameNum));
       }
       if ds_map_exists(anim,part + '_spriteangle_' + string(NextKeyFrameNum))
       {
        next_spriteangle= ds_map_find_value(anim,part + '_spriteangle_' + string(NextKeyFrameNum));
        instanceId.anim_spriteangle= prev_spriteangle+(angle_difference(next_spriteangle,prev_spriteangle)*frameProgress); 
       }
       
       var prev_xscale=ds_map_find_value(anim,part + '_xscaleinit');
       var next_xscale=prev_xscale;
       
       if ds_map_exists(anim,part + '_xscale_' + string(prevKeyFrameNum))
       {
        prev_xscale= ds_map_find_value(anim,part + '_xscale_' + string(prevKeyFrameNum));
       }
       if ds_map_exists(anim,part + '_xscale_' + string(NextKeyFrameNum))
       {
        next_xscale= ds_map_find_value(anim,part + '_xscale_' + string(NextKeyFrameNum));
        instanceId.anim_xscale= prev_xscale+((next_xscale-prev_xscale)*frameProgress); 
       }
       
       var prev_yscale=ds_map_find_value(anim,part + '_yscaleinit');
       var next_yscale=prev_yscale;
       
       if ds_map_exists(anim,part + '_yscale_' + string(prevKeyFrameNum))
       {
        prev_yscale= ds_map_find_value(anim,part + '_yscale_' + string(prevKeyFrameNum));
       }
       if ds_map_exists(anim,part + '_yscale_' + string(NextKeyFrameNum))
       {
        next_yscale= ds_map_find_value(anim,part + '_yscale_' + string(NextKeyFrameNum));
        instanceId.anim_yscale= prev_yscale+((next_yscale-prev_yscale)*frameProgress); 
       }
       

       if ds_map_exists(anim,part + '_visible_' + string(NextKeyFrameNum))
       {
        instanceId.visible= ds_map_find_value(anim,part + '_visible_' + string(NextKeyFrameNum)); 
       }
       
       
       
       }
   }

if (endOrLoop)
{
    if (ds_map_find_value(anim,'loop'))
    {
        elapsed=0;
        ds_map_replace(anim,'elapsed',elapsed);
        return true; //anim is still running
    }
    else
    {
        ds_map_replace(anim,'end',true);
        return false; //anim has ended
    }
}
else
{
ds_map_replace(anim,'elapsed',elapsed+delta_time);
}



return true;  //anim is still running
   
