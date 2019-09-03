var position_x=argument0;
var position_y=argument1;
var min_value=argument2;
var max_value=argument3;
var width=argument4;
var height=argument5;


var inst_slider=instance_create(x,y,obj_UI_Slider);
inst_slider.position_x=position_x;
inst_slider.position_y=position_y;
inst_slider.min_value=min_value;
inst_slider.max_value=max_value;
inst_slider.width=width;
inst_slider.height=height;


return inst_slider;
