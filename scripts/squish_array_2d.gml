var array=argument0;
var index=argument1;
var vals=argument2;
var newarray=0;
if is_array(array) && is_array(vals)
{

        for (var i=array_height_2d(array)-1; i>=index; i--)
        {
            for(var j=0; j<array_length_2d(array,i);j++)
            {
            array[i+1,j]=array[i,j]
            }
        }
        
        
        for (var j=0; j<array_length_1d(vals);j++)
        {
            array[index,j]=vals[j];
        }
        
        for (var i=0; i<array_height_2d(array); i++)
        {
            for(var j=0; j<array_length_2d(array,i);j++)
            {
            newarray[i,j]=array[i,j];
            }
        }
    
 

    
    

}



return newarray;
