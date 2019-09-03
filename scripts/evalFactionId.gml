var targetInst=id;
var factionId = -1;
if argument_count>0
{
    if is_array(argument[0])
    {   
    
        var temp=(argument[0]);
        targetInst=temp[0];
        
        
        if array_length_1d(temp)>1
        {
        factionId= temp[1];
        }
    }
    else
    {
        targetInst=argument[0];
        
        if argument_count>1
        {
        factionId= argument[1];
        }
    }
}

if factionId!=-1
{
    if factionId != targetInst.factionId
    {
    return false;
    }
    else
    {
    return true;
    }
}
else
{
    return targetInst.factionId;

}

