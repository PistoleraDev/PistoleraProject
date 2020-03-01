if !ValidateObject(obj_character){return -1;}

randomize();
if (instance_number(obj_fleespot)>0)
{
    var inst = instance_find(obj_fleespot,random_range(0,instance_number(obj_fleespot)));   
}

move_target=inst;
