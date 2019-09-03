var str=argument0;
var a;
var b;
var array;
var rungs;
var element

if !is_string(str) || string_count('£|£', str)<=0
{
return 0;
}
else
{      
    a=0
    if (string_count('£$£', str)==0)
    {
    rungs[a]=str;
    }
    else
    {
        while (string_count('£$£', str)>0)
        {     
        rungs[a]=string_replace(string_copy(str,1,string_pos('£$£', str)),'£$£','');
        str=string_copy(str,string_pos('£$£', str)+3,string_length(str)-string_pos('£$£', str));
        a+=1;
        }
    }
    for (a=0;a<array_length_1d(rungs);a++)
    {
        
        b=0

        while (string_count('£|£', rungs[a])>0)
        {
    
            element=string_replace(string_copy(rungs[a],1,string_pos('£|£', rungs[a])-1),'£|£','');
            

             array[a,b]=string_replace_all(string_replace_all(string(element),'£||','£|'),'£$$','£$');
             //array[a,b]=string_replace_all(string_replace_all(string_replace_all(string(element),'£',''),'$',''),'|','');
             if string_pos('<real>',array[a,b])<>0 and string_pos('£|£',array[a,b])==0 and string_pos('£$£',array[a,b])==0
             {
             array[a,b]=string_replace_all(array[a,b],'<real>','');
             array[a,b]=real(array[a,b]);
             }
             
             
             
            rungs[a]=string_copy(rungs[a],string_pos('£|£', rungs[a])+3,string_length(rungs[a])-string_pos('£|£', rungs[a]));
            
    
            
        b+=1;
        }
    
    }
    return array;



}

