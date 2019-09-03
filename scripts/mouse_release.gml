if instance_number(obj_cursor)==0
{
instance_create(mouse_x,mouse_y,obj_cursor);
}

    if obj_cursor.hold_id!=id
    {
    return false;
    }

    if mouse_check_button_released(mb_left)&&obj_cursor.hold_id==id
    {
        return true;
        obj_cursor.hold_id=noone;
    }
    else
    {
    return false;
    }

