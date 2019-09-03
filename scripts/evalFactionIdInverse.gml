
if argument_count>0
{
    var args;
    for (var i=0; i<argument_count;i++)
    {
    args[i]=argument[i];
    }
    
    return !(evalFactionId(args));
}
else
{
return !(evalFactionId());
}
