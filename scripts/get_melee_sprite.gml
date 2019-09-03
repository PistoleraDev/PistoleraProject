var melee_id=argument0;
var sprite=get_melee_genericstat(melee_id,5);

if !sprite_exists(sprite)
{
sprite=spr_saber;
}
return sprite;




