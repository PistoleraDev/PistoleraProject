var smoothing = 0;
if argument_count>0
{
smoothing=argument[0];
}

if path_index!=-1
{
    if path_position<=0.99
    {
    
    faceTargetSmoothing(path_get_x(path_index,path_position+0.01),path_get_y(path_index,path_position+0.01),smoothing)
    
    }
}
