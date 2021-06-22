if !ValidateObject(obj_camera){return -1;}

var minX = -9999999;
var minY = -9999999;
var maxX = 9999999;
var maxY = 9999999;

if (instance_number(obj_viewboundary)>0)
{
    for (var i=0; i<instance_number(obj_viewboundary);i++)
    {

    var inst_boundary = instance_find(obj_viewboundary,i);
            if (i==0)
        {
        //initial set
        minX=inst_boundary.x;
        minY=inst_boundary.y;
        maxX=inst_boundary.x;
        maxY=inst_boundary.y;
        }
        if (inst_boundary.x <minX)
        {
        minX=inst_boundary.x;
        }
        if (inst_boundary.y <minY)
        {
        minY=inst_boundary.y;
        }
        if (inst_boundary.y >maxY)
        {
        maxY=inst_boundary.y;
        }
        if (inst_boundary.x >maxX)
        {
        maxX=inst_boundary.x;
        }
    }
    min_x=minX;
    min_y=minY;
    max_x=maxX;
    max_y=maxY;

}
