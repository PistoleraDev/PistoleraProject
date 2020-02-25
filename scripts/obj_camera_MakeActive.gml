if !ValidateObject(obj_camera){return -1;}
with obj_camera
{
//deactivate all cameras
active=false;
}
//activate this camera
active=true;
