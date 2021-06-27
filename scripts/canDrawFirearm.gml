
var noConflict = false;

if (ScenarioState!='combat')
{
return false;
}

if( firearm_fullinventory_getshots()<1)
{
return false;
}

switch (action_state)
{
    case 'idle' : noConflict=true;      break;
    case 'dead' : return false;      break;
    case 'dodging' : return false;      break;
    case 'reloading' : if(check_action_weapon()){noConflict=true} else {return false}; break; //attempting to fire your weapon breaks out of reloading
    case 'toss' : return false;      break;
    case 'drawempty' : return false;      break;
    case 'aiming' : return false;      break;
    case 'firing' : return false;      break;
    case 'stunned' : return false;      break;
    case 'meleeing' : return false;      break;
    case 'drawing' : return false;      break;
    default : noConflict=true;      break;

}

switch (action_trigger)
{
    case 'reload' : if(check_action_weapon()){noConflict=true} else {return false}; break; //attempting to fire your weapon breaks out of reloading
    default : noConflict=true;      break;

}

switch (movement_state)
{
    case 'idle' : noConflict=true;      break;
    case 'walking' : noConflict=true;      break;
    case 'stunned' : return false;      break;
    case 'dodging' : return false;      break;

    default : noConflict=true;      break;
}

return noConflict;
