var array=argument0;
var index=argument1;
var newarray=0;
if is_array(array)
{

        for (var i=index; i+1<array_height_2d(array); i++)
        {
            for(var j=0; j<array_length_2d(array,i);j++)
            {
            array[i,j]=array[i+1,j];
            }
        }
        
        for (var i=0; i+1<array_height_2d(array); i++)
        {
            for(var j=0; j<array_length_2d(array,i);j++)
            {
            newarray[i,j]=array[i,j];
            }
        }
    
 

    
    

}



return newarray;
