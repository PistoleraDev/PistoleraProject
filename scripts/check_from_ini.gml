var filename=argument0;
var section=argument1;
var key=argument2;
var value;
var string_out
ini_open(filename)
value=ini_key_exists(section, key);
ini_close()

return value;
