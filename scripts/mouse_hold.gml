if instance_number(obj_cursor)==0
{
instance_create(mouse_x,mouse_y,obj_cursor);
}
    
    if mouse_check_button(mb_left) && obj_cursor.hold_id==id
    {
    return true;    
    }
    else
    {
    return false;
    }

