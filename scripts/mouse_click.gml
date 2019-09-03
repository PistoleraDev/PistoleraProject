if instance_number(obj_cursor)==0
{
instance_create(mouse_x,mouse_y,obj_cursor);
}



    image_angle=spriteangle;
    if place_meeting(x,y,obj_cursor)&&mouse_check_button_pressed(mb_left)
    {
        image_angle=0;
        var min_depth=depth;
        with obj_entity
        {
            image_angle=spriteangle;
            if place_meeting(x,y,obj_cursor)&&mouse_check_button_pressed(mb_left)&& (depth<min_depth)
            {
            min_depth=depth;
            }
            image_angle=0;
        }
        
        if min_depth!=depth
        {
        return false;
        }
        else
        {
        obj_cursor.hold_id=id;
        return true;
        }
        
    }
    else
    {
    return false;
    }

    



