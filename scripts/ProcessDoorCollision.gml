//requires calling instance to be a door.
if (!object_is_ancestor(object_index,obj_door) && object_index != obj_door)
{
return 0;
}

var inst = collision_line(x,y,x+lengthdir_x(sprite_width,spriteangle),y+lengthdir_y(sprite_width,spriteangle),obj_door_hitbox,0,true);

if (inst==noone)
{
return 0;
}

var dirToInst = point_direction(x,y,inst.x,inst.y);

var diff = angle_difference(spriteangle,dirToInst);

doorMomentum += 30 * sign(diff)*global.delta;

doorMomentum=min(10000,doorMomentum);


