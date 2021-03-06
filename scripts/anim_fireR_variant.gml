var part=argument[0]; //indicates what part is being animated. e.g. armL, armR, body, etc.
var anim_duration=argument[1];
var anim_loop=argument[2];
var variant_num=1;
if argument_count>3
{
    var variant=argument[3];
    if is_string(variant)
    {
        switch variant
        {
        case 'anim_fireR_1':
        variant_num=1;
        break;
        case 'anim_fireR_2':
        variant_num=2;
        break;
        case 'anim_fireR_3':
        variant_num=3;
        break;
        default:
        variant_num=1;
        break;
        }
    }
    else
    {
    variant_num=variant;
    }
}

switch variant_num
{
 case 1:
 return anim_fireR_1(part,anim_duration,anim_loop);
 break;
 case 2:
 return anim_fireR_2(part,anim_duration,anim_loop);
 break;
 case 3:
 return anim_fireR_3(part,anim_duration,anim_loop);
 break;
 default:
 return anim_fireR_1(part,anim_duration,anim_loop);
 break;
}
