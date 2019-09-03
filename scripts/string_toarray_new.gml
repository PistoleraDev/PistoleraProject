var string_in=argument0;
var array=0;
var rung='';
var element='';
var index_width=0;
var index_height=0;
/*THIS WILL NOT WORK, NEED NEW METHOD*/
while string_count('[|]',string_in)>0
{
rung=string_copy(string_in,string_pos('[',string_in),string_pos(']',string_in)-string_pos('[',string_in));
string_in=string_copy(string_in,string_pos(']',string_in)+1,string_length(string_in)-(string_pos(']',string_in)+1));

    index_width=0;
    while string_count('{',rung)>0
    {
    element=string_copy(rung,string_pos('{',rung),string_pos('}',rung)-string_pos('{',rung));
    rung=string_copy(rung,string_pos('}',rung)+1,string_length(rung)-(string_pos('}',rung)+1));
    
    
    
        
    }

    index_height+=1;
}


