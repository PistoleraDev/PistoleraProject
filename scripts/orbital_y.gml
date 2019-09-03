var depth_displacement=argument0;
var lateral_displacement=argument1;
var orbital_angle=argument2;

var d=degtorad(orbital_angle);
return -(depth_displacement*sin(d))+(lateral_displacement*cos(d));
