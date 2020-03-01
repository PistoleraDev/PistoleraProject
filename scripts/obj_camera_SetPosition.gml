if !ValidateObject(obj_camera){return -1;}

if argument_count!=2
{
ReportError("obj_camera_SetPosition called with incorrect number of arguments; ")
return -1;
}

x=argument[0];
y=argument[1];


