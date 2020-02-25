if argument_count<=0
{
ReportError("PlaySoundEffect was called with no arguments.");
}
else
{
    if audio_exists(argument[0])
    {
    //todo: audio should play in 3d space- set up audio listener
    audio_play_sound(argument[0],0,false);
    }
    else
    {
    ReportError("Sound effect requested: " + string(argument[0]) +"does not exist");
    }
}


