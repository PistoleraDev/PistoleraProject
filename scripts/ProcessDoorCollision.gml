//requires calling instance to be a door.
if (!object_is_ancestor(object_index,obj_door))
{
return 0;
}

var inst = collision_line(x,y,lengthdir_x(sprite_width,spriteangle),lengthdir_y(sprite_width,spriteangle),obj_mobile,0,true);

if (inst==noone)
{
return 0;
}

var dirToInst = point_direction(x,y,inst.x,inst.y);

var diff = angle_difference(spriteangle,dir_to_inst);

doorMomentum += 1 * sign(diff)*global.delta;

doorMomentum=min(5,doorMomentum);
