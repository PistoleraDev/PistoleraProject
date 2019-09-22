
var noConflict = false;

switch (action_state)
{
    case 'idle' : noConflict=true;      break;
    case 'dead' : return false;      break;
    case 'dodging' : noConflict=true;     break;
    case 'reloading' : noConflict=true;      break;
    case 'toss' : noConflict=true;      break;
    case 'drawempty' : noConflict=true;      break;
    case 'aiming' : noConflict=true;      break;
    case 'firing' : noConflict=true;      break;
    case 'stunned' : return false;      break;
    case 'meleeing' : noConflict=true;     break;
    case 'drawing' : noConflict=true;      break;
    default : noConflict=true;      break;

}

switch (movement_state)
{
    case 'idle' : noConflict=true;      break;
    case 'walking' : noConflict=true;      break;
    case 'dodging' : noConflict=true;     break;
    case 'stunned' : return false;      break;

    default : noConflict=true;      break;
}    
return noConflict;
