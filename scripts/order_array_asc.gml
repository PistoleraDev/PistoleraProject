var array=argument[0];
var index=-1;
var val_holder=0;
var i;
var j;
var k;
if argument_count>1
{
index=argument[1];
}

if is_array(array)
{
    if index==-1 && array_height_2d(array)==1
    {
        for (i=0;i<array_length_1d(array);i++)
        {
            for (j=array_length_1d(array)-1;j>0;j--)
            {
                if array[j]<array[j-1]
                {
                val_holder=array[j-1];
                array[j-1]=array[j];
                array[j]=val_holder;
                }
            }
        }
        
    
    }
    else
    {
    if index==-1
    {
    index=0;
    }
    
        for (i=0;i<array_height_2d(array);i++)
        {
            for (j=array_height_2d(array)-1;j>0;j--)
            {
            if array[j,index]<array[j-1,index]
                {
                    for (k=0; k<array_length_2d(array,j);k++)
                    {
                    val_holder=array[j-1,k];
                    array[j-1,k]=array[j,k];
                    array[j,k]=val_holder;
                    }
                
                
                }
            }
        }
    
    
    }
}
return array;

