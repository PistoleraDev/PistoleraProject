#define RequiredInstanceExists
//Same as InstanceExists, but reports an error if object not found.

if argument_count<=0
{
ReportError("RequiredInstanceExists was called without any arguments");
return false;
}

if (instance_exists(argument0))
{
return true;
}
else
{
ReportError("Required instance: " + string(argument0) + " was not found");
return false;
}

#define script196
