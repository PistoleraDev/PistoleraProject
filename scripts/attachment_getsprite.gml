var sprite_id=argument[0];

if instance_number(obj_attachment_sprites)==0
{
instance_create(0,0,obj_attachment_sprites);
}


if argument_count>1
{
var character_id=argument[1];


var char_index= array_match(obj_attachment_sprites.character_attachment_sprites,character_id,0);
    if char_index==-1
    {
    var sprite_array=string_toarray(obj_attachment_sprites.general_sprites);
    }
    else
    {
    var sprite_array=string_toarray(obj_attachment_sprites.character_attachment_sprites[char_index,1]);
    }
}
else
{
var sprite_array=string_toarray(obj_attachment_sprites.general_sprites);
}

var sprite_ind=array_match(sprite_array,sprite_id,0);

if sprite_ind==-1
{
show_debug_message('Failed to find sprite');
return spr_purpletest;
}

return sprite_array[sprite_ind,1];



