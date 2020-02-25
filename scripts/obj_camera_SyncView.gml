if !ValidateObject(obj_camera){return -1;}
if active
{
//defaults to view 0
    var viewNum=0;
    if argument_count>0
    {
    viewNum=argument[0];
    }
    
    view_xview[viewNum]=x - view_wview[viewNum]*0.5;
    view_yview[viewNum]=y - view_hview[viewNum]*0.5;
}
