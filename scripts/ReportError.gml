if argument_count<=0
{
show_error("An error was caught, but no message was reported" + array_tostring_new(debug_get_callstack()),false);

}
else
{
show_error(argument0 + array_tostring_new(debug_get_callstack()),false);
}
