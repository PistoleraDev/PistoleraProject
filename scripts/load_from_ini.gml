var filename=argument[0];
var section=argument[1];
var key=argument[2];
var force_real=false;
if argument_count>3
{
    if is_string(argument[3])
    {
    force_real=false;
    }
    else if argument[3]<>false
    {
    force_real=true
    }
    else
    {
    force_real=false;
    } 
}
var value;
var string_out

if file_exists(filename)
{
ini_open(filename)
string_out=ini_read_string(section,key+'_datatype','')
if string_out=='real'||force_real
{
value=ini_read_real(section,key,0)
}
else
{
value=ini_read_string(section,key,'')
}
ini_close()

return value;
}
else
{
return 0
show_debug_message('could not load file'+filename);
}
