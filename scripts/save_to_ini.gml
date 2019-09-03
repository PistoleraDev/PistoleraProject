var filename=argument0;
var section=argument1;
var key=argument2;
var value=argument3;


ini_open(filename)
if is_real(value)
{
ini_write_real(section,key,value);
ini_write_string(section,key+'_datatype','real');
}
else if is_string(value)
{
ini_write_string(section,key,value);
ini_write_string(section,key+'_datatype','string');
}
else
{
ini_write_string(section,key,string(value));
ini_write_string(section,key+'_datatype','string');
}
ini_close()

