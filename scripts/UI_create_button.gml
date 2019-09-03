var position_x=argument0;
var position_y=argument1;
var action=argument2;
var width=argument3;
var height=argument4;
var label=argument5;


var inst_button=instance_create(x,y,obj_UI_Button);
inst_button.position_x=position_x;
inst_button.position_y=position_y;
inst_button.action=action;
inst_button.width=width;
inst_button.height=height;
inst_button.label=label;


return inst_button;
