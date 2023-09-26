if !ValidateObject(obj_camera){return -1;}
if active
{



//defaults to view 0
    var viewNum=0;
    if argument_count>0
    {
    viewNum=argument[0];
    }
    
    if (x>max_x-view_wview[viewNum]*0.5)
    {
    x=max_x-view_wview[viewNum]*0.5;
    }
    if (y>max_y-view_hview[viewNum]*0.5)
    {
    y=max_y-view_hview[viewNum]*0.5;
    }
    if (x<min_x+view_wview[viewNum]*0.5)
    {
    x=min_x+view_wview[viewNum]*0.5;
    }
    if (y<min_y+view_hview[viewNum]*0.5)
    {
    y=min_y+view_hview[viewNum]*0.5;
    }
    view_xview[viewNum]=round(x - view_wview[viewNum]*0.5);
    view_yview[viewNum]=round(y - view_hview[viewNum]*0.5);
}
