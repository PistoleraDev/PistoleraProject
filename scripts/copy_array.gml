var _array_in=argument[0];
var _i,_j;
var _array_out;
_array_out[0,0]=0;

for (_i=0;_i<array_height_2d(_array_in);_i++)
{

    for (_j=0;_j<array_length_2d(_array_in,_i);_j++)
    {
    
    _array_out[_i,_j]=_array_in[_i,_j];
    
    }


}

return _array_out
