var array=argument0;
var row=argument1;
var row_array=0;
if is_array(array)
{
    if row<array_height_2d(array)
    {
        for (var i=0; i<array_length_2d(array,row);i++)
        {
        row_array[i]=array[row,i];
        }
        return row_array;
    }
}
else
{

show_debug_message('Error occured in array_getrow, passed arguments were either not an array or overflowed.');
return 0;
}
