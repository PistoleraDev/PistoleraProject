var array=argument[0];
var val=argument[1];

if is_array(array)
{
    for (var i=0;i<array_height_2d(array);i++)
    {
        for (var j=0;j<array_length_2d(array,i);j++)
        {
            if array[i,j] == val
            {
            return true;
            }
        }
    }
    return false;
}
else
{
return array == val;
}
