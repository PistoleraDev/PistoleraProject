
var noConflict = false;

switch (action_state)
{
    /*case 'idle' : return false;      break;
    case 'dead' : return false;      break;
    case 'dodging' : return false;      break;
    case 'reloading' : return false;      break;
    case 'toss' : return false;      break;
    case 'drawempty' : return false;      break;*/
    case 'aiming' : noConflict=true;      break;
    /*case 'firing' : return false;      break;
    case 'stunned' : return false;      break;
    case 'meleeing' : return false;      break;
    case 'drawing' : return false;     break;*/
    default : return false;      break;

}

switch (movement_state)
{
    case 'idle' : noConflict=true;      break;
    case 'walking' : noConflict=true;      break;
    case 'stunned' : return false;      break;
    case 'dodging' : return false;      break;

    default : return false;      break;
}

return noConflict;
