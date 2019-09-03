var array=argument[0];
var val=argument[1];
var index=-1;
if argument_count>2
{
index=argument[2];
}

if is_array(array)
{
    if array_height_2d(array)>1 || index<>-1
    {
        for( var i=0; i<array_height_2d(array);i++;)
        {
            if array[i,index]==val
            {
            return i;
            }
        }
    }
    else 
    {
        for( var i=0; i<array_length_1d(array);i++;)
        {
            if array[i]==val
            {
            return i;
            }
        }
    }

}

return -1;

