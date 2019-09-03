var array=argument0;
var i;
var j;
var array_string='';


if !is_array(array)
{
array_string=string(array);
}
else
{

    for (i=0; i<array_height_2d(array);i++)
    {
        array_string+='[';
        for (j=0; j<array_length_2d(array,i);j++)
        {
            array_string+='{'
            if is_real(array[i,j])
            {
            array_string+='<real>'
            }
            array_string+=string(array[i,j]);
            array_string+='}'
        }
        array_string+=']'
    }

}

return array_string;
