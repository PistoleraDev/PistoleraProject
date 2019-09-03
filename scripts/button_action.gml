var action=argument0;

//standardised set of redirects for button actions. Every time a button is added,
//its action should be hard-coded here.

switch action
{
case 'donothing':
break;

case 'save_keyframes':
save_keyframes();
break;

case 'save_animation':
save_animation();
break;

case 'load_animation_editor':
load_animation_editor();
break;

case 'play_animation_editor':
play_animation_editor();
break;
}


