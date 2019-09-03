if instance_number(obj_cursor)==0
{
instance_create(mouse_x,mouse_y,obj_cursor);
}

    


    if place_meeting(x,y,obj_cursor)
    {
        var min_depth=depth;
    
        with obj_entity
        {
            if place_meeting(x,y,obj_cursor)&& (depth<min_depth)
            {
            min_depth=depth;
            }
        }
        
        if min_depth!=depth
        {
        return false;
        }
        else
        {
        return true;
        }
        
    }
    else
    {
    return false;
    }

