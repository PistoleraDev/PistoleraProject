var _inst=argument0;
var _damage=argument1;
var _knockback=argument2;
var _duration=argument3;
var _direction=argument4;


if _inst<>noone
{
    if _inst.object_index==obj_character || object_get_parent(_inst.object_index)==obj_character
    {
        if _inst.grace_period<=0
        {
        _inst.grace_period=_duration;
        _inst.hitpoints-=_damage;
        var vect_current= _inst.knockback_counter;
        var vect_new=_knockback*room_speed*_inst.weight_modifier;
                    
        var xvect=lengthdir_x(vect_current,_inst.knockback_dir);
        var yvect=lengthdir_y(vect_current,_inst.knockback_dir);
                    
        xvect+=lengthdir_x(vect_new,_direction);
        yvect+=lengthdir_y(vect_new,_direction);
                    
        var theta=point_direction(0,0,xvect,yvect);
        _inst.knockback_dir=theta;
        _inst.knockback_counter=point_distance(0,0,xvect,yvect);
        }
    }
}
