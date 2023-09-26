if argument_count<=0
{
ReportError("GridIsOccupied was called with no arguments.");
}

var grid = argument[0];
var _x = argument[1];
var _y =argument[2];
var _cellSize= argument[3]


//find if a grid cell is occupied at x and y by normalising x and y to grid coordinates.

return 0==mp_grid_get_cell(grid,_x div _cellSize, _y div _cellSize)
