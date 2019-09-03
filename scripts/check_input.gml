var input=argument0;

if !is_array(argument0) 
{
return false;
show_debug_message("ERROR in check_input(): Failed to process an input check. Value to be checked was not an array, see obj_controlshandler");
}
else if array_length_1d(input)<>2
{
return false;
show_debug_message("ERROR in check_input(): Failed to process an input check. Value to be checked was not in a standard array format, see obj_controlshandler");
}
else
{
var input_id=input[0];
var input_typ=input[1];

    if input_typ=='key'
    {
        return keyboard_check(input_id);
    }
    else if input_typ=='mouse'
    {
        return mouse_check_button(input_id);
    }
    else if input_typ=='wheel'
    {
        if string_pos('up',input_id)<>0
        {
        return mouse_wheel_up();
        }
        else
        if string_pos('down',input_id)<>0
        {
        return mouse_wheel_down();
        }
    }
    else
    {
        return false;
        show_debug_message("ERROR in check_input(): failed to find correct format for input type. Valid types are mouse or key.");
    }
}


