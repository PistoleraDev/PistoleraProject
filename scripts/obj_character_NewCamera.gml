if !ValidateObject(obj_character){return -1;}

if instance_exists(camera)
{
    with camera
    {
        obj_camera_Delete();
    }
}

camera = instance_create(x,y,obj_camera);

