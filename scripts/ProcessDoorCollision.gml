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
var distToInst = point_distance(x,y,inst.x,inst.y);

var diff = angle_difference(spriteangle,dirToInst);

//Overlay distance to instance onto the door's colission line.
var pointOnDoorX = x + lengthdir_x(distToInst,spriteangle);
var pointOnDoorY = y + lengthdir_y(distToInst,spriteangle);


var displacement = point_distance(pointOnDoorX,pointOnDoorY,inst.x,inst.y);

var angle_bef=spriteangle;
//Creates an 'exclusion zone' around the door where it is always pushed a minimum away from the collission instance.
while(displacement<(sprite_height/2))
{
    if (spriteangle>maxSwing)
    {
    spriteangle=maxSwing;
    break;
    }
    else if (spriteangle<-maxSwing)
    {
    spriteangle=-maxSwing;
    break;
    }
spriteangle+=sign(diff)*0.5;
displacement+=0.5;
}

doorMomentum += 30 * sign(diff)*global.delta;

doorMomentum=min(10000,doorMomentum);


