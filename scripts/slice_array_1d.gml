var array=argument0;
var index=argument1;
var newarray=0;
if is_array(array)
{
        for (var i=index; i+1<array_length_1d(array); i++)
        {
        array[i]=array[i+1];
        }
        
        for (var i=0;i<array_length_1d(array)-1;i++)
        {
        newarray[i]=array[i];
        }
}



return newarray;
