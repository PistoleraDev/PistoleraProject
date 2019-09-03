var array=argument0;
var index=argument1;
var val=argument2;
var newarray=0;
if is_array(array)
{
        for (var i=array_length_1d(array)-1; i>=index; i--)
        {
        array[i+1]=array[i];
        }
        
        array[index]=val;
        
        for (var i=0;i<array_length_1d(array)-1;i++)
        {
        newarray[i]=array[i];
        }
}



return newarray;
