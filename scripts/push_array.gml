// push_array(array to push, value to push in)
var array=argument0;
var push_value=argument1;
var i;
    if is_array(array)
    {
        if is_array(push_value)
        {
        
        array_length=array_height_2d(array);
        
            for (i=0;i<= array_length_1d(push_value)-1;i++;)
            {
            array[array_length,i]=push_value[i];
            }
        }
        else
        {
        array_length=array_length_1d(array);
            array[array_length]=push_value;
        }
    }
    else
    {
    array=0;
        if is_array(push_value)
        {
        
            for (i=0;i<= array_length_1d(push_value)-1;i++;)
            {
            array[0,i]=push_value[i];
            }
        }
        else
        {
            array[0]=push_value;
        }
    }
    return array;
