var array = argument[0];
var out = "";
if is_array(array)
{

    for (var i=0;i<array_length_1d(array);i++)
    {
    if is_real(array[i])
    {
        out= out + "," + string(array[i]);
    }
    else
    {
        out= out + "," + array[i];
    }

    }
}
else
{
    if is_real(array)
    {
        out= string(array);
    }
    else
    {
        out=  array;
    }
}
draw_text(x,y-20,out);
