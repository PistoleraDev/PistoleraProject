if !ValidateObject(obj_character){return -1;}

if RequiredInstanceExists(camera)
{
    if camera.dynamic
    {
        var x_pos = (x + (mouse_x-x)/4)
        var y_pos = (y + (mouse_y-y)/4)
        
        with camera
        {
        obj_camera_SetPosition(x_pos,y_pos);
        }
    }
    else
    {
        with camera
        {
        obj_camera_SetPosition(x,y);
        }
    }
    

}
