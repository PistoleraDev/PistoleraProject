if argument_count>0
{
    var forceSelectInst = argument[0];
    action_target = forceSelectInst;
}
else
{
    var select_new=false;
    if action_target==noone
    {
    select_new = true;
    }
    else if !instance_exists(action_target)
    {
    select_new = true;
    }
    else if action_target.dead
    {
    select_new = true;
    }
    
    if select_new
    {
        action_target=instance_closest_notinfaction(x,y,obj_character,99999);
    }
}
   return action_target;
