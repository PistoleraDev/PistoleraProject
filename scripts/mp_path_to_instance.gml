//REQUIRES THAT THE CALLING INSTANCE HAS A 'path' VARIABLE
//REQUIRES A global .path_grid variable.

var inst=argument0;
var _speed=argument1;
        if instance_exists(inst)
        {
           if path_exists(path)
           {
           path_clear_points(path);
           } 
           else
           { 
           path=path_add();
           }
           if mp_grid_path(global.path_grid, path, x, y, inst.x, inst.y, 1)
           {   
           path_start(path,_speed,0,0);
           }
        }
