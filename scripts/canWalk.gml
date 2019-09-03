
var noConflict = false;

switch (action_state)
{
    case 'idle' : noConflict=true;      break;
    case 'dead' : return false;      break;
    case 'dodging' : return false;      break;
    case 'reloading' : noConflict=true;      break;
    case 'toss' : noConflict=true;      break;
    case 'drawempty' : noConflict=true;      break;
    case 'aiming' : noConflict=true;      break;
    case 'firing' : noConflict=true;      break;
    case 'stunned' : return false;      break;
    case 'meleeing' : return false;      break;
    case 'drawing' : noConflict=true;      break;
    default : noConflict=true;      break;

}

switch (movement_state)
{
    case 'idle' : noConflict=true;      break;
    case 'walking' : noConflict=true;      break;
    case 'dodging' : return false;      break;
    case 'stunned' : return false;      break;

    default : noConflict=true;      break;
}    
if control=='ai'
{
    //Prevents conflict if the AI has a given speed for some other reason.
    if abs(xspeed)>0.2 || abs(yspeed)>0.2
    {
        return false;
    }
}
return noConflict;
