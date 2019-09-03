
var array=argument0
var a;
var b;
var array_string=''

if !is_array(array)
{
return string(array);
}
else
{

    for (a=0; a<array_height_2d(array);a++)
    {
        for (b=0; b<array_length_2d(array,a);b++)
        {
            if is_real(array[a,b])
            {
            array_string+='<real>';
            }
            array_string+=string_replace_all(string_replace_all(string(array[a,b]),'£|','£||'),'£$','£$$');
            array_string+='£|£';
        }
            array_string+='£$£'
    }

return array_string;
}


