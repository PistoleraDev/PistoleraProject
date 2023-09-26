if !ValidateObject(obj_camera){return -1;}
if active
{
    var viewNum=0;
    if argument_count>0
    {
    viewNum=argument[0];
    }
    
    var displayWidth = display_get_width();
    var displayHeight = display_get_height();

    var ratio =  displayWidth/displayHeight;    

    var portHeight = displayHeight/2;
    var portWidth = ratio*portHeight;
    
    //view_hport[0]=portHeight;
   // view_wport[0]=portWidth;
    
    view_hview[viewNum]=2*view_hport[0];
    view_wview[viewNum]=2*view_wport[0];
    
}
