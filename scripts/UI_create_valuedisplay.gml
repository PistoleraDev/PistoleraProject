var position_x=argument0;
var position_y=argument1;
var label=argument2;


var inst_valuedisplay=instance_create(x,y,obj_UI_ValueDisplay);
inst_valuedisplay.position_x=position_x;
inst_valuedisplay.position_y=position_y;
inst_valuedisplay.label=label;


return inst_valuedisplay;
