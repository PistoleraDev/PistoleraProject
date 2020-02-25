if argument_count<=0
{
ReportError("InstanceExists was called without any arguments");
return false;
}

if (instance_exists(argument0))
{
return true;
}
else
{
return false;
}
