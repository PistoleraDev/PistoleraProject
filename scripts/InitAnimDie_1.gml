var duration = argument0;
var loop= argument1;
var deathsprite=argument2;

var animMap = ds_map_create();

ds_map_add(animMap,'animName','InitAnimDie_1');
ds_map_add(animMap,'duration',duration);
ds_map_add(animMap,'elapsed',0);
ds_map_add(animMap,'loop',loop);
ds_map_add(animMap,'end',false);

//format: [part]_[property]_[keyframe]
var keyframe = 0;
ds_map_add(animMap,'keyframe_'+string(keyframe),0.25);

var part = 'body'
ds_map_add(animMap,part + '_x_' + string(keyframe),0);
ds_map_add(animMap,part + '_y_' + string(keyframe),0);
ds_map_add(animMap,part + '_spriteangle_' + string(keyframe),0);
ds_map_add(animMap,part + '_xscale_' + string(keyframe),1);
ds_map_add(animMap,part + '_yscale_' + string(keyframe),1);
ds_map_add(animMap,part + '_visible_' + string(keyframe),true);
ds_map_add(animMap,part + '_spriteindex_' + string(keyframe),deathsprite);
ds_map_add(animMap,part + '_imageindex_' + string(keyframe),0);

part = 'weaponR'
ds_map_add(animMap,part + '_visible_' + string(keyframe),false);



part = 'armR'
ds_map_add(animMap,part + '_visible_' + string(keyframe),false);

part = 'armL'
ds_map_add(animMap,part + '_visible_' + string(keyframe),false);

part = 'head'
ds_map_add(animMap,part + '_visible_' + string(keyframe),false);

part = 'hat'
ds_map_add(animMap,part + '_visible_' + string(keyframe),false);

keyframe=1;
ds_map_add(animMap,'keyframe_'+string(keyframe),0.5);

var part = 'body'
ds_map_add(animMap,part + '_imageindex_' + string(keyframe),1);

keyframe=2;
ds_map_add(animMap,'keyframe_'+string(keyframe),0.75);

var part = 'body'
ds_map_add(animMap,part + '_imageindex_' + string(keyframe),2);

keyframe=3;
ds_map_add(animMap,'keyframe_'+string(keyframe),1);

var part = 'body'
ds_map_add(animMap,part + '_imageindex_' + string(keyframe),3);

return animMap;

