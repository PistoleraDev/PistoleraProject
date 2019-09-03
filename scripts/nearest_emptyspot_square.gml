/*takes x, y and a radius value, then checks for an empty
space in the cardinal directions.
returns an array of the x, y values of the nearest
empty space. 
*/
var ecks=argument[0];
var why=argument[1];
var max_radius=20;
var radius=0
if argument_count>2
{
var max_radius=argument[2];
}

var is_empty=false;

if place_free(ecks,why)
{
is_empty=true;
return(create_array(ecks,why,'none'));
}

while (!is_empty) || radius<=max_radius
{
    if place_free(ecks+radius,why)
    {
    is_empty=true;
    return(create_array(ecks+radius,why,'right'));
    }
    
    if place_free(ecks-radius,why)
    {
    is_empty=true;
    return(create_array(ecks-radius,why,'left'));
    }
    
    if place_free(ecks,why-radius)
    {
    is_empty=true;
    return(create_array(ecks,why-radius,'up'));
    }
    
    if place_free(ecks,why+radius)
    {
    is_empty=true;
    return(create_array(ecks,why+radius,'down'));
    }
    radius+=1;
}

return(create_array(ecks,why,'none'));
