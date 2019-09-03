///@description Get the sprite of a listed attachment by attachment id
///@param attachment_id the attachment id to be looked up

var character_id=argument0;
var sprite_id=argument1;
var _sprite_index=spr_purpletest;
if !instance_exists(obj_char_attachment_stats)
{
instance_create(x,y,obj_char_attachment_stats);  
}
if !instance_exists(obj_attachment_sprites)
{
instance_create(x,y,obj_attachment_sprites);  
}

//grabs the encoded array from the appropriate rung of this array and decodes

var array=string_toarray(obj_attachment_sprites.character_attachment_sprites[array_match(obj_attachment_sprites.character_attachment_sprites,character_id,0),1]);

var sprite=array[array_match(array, sprite_id, 0),1];

if asset_get_type(sprite_get_name(sprite))==asset_sprite
{
_sprite_index=sprite;
}

  
return _sprite_index;
