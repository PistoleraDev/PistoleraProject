var duration = argument0;
var loop= argument1;

var animMap = ds_map_create();

ds_map_add(animMap,'animName','InitAnimAimR_1');
ds_map_add(animMap,'duration',duration);
ds_map_add(animMap,'elapsed',0);
ds_map_add(animMap,'loop',loop);
ds_map_add(animMap,'end',false);

//format: [part]_[property]_[keyframe]
var keyframe = 0;
ds_map_add(animMap,'keyframe_'+string(keyframe),1);

var part = 'body'
ds_map_add(animMap,part + '_x_' + string(keyframe),0);
ds_map_add(animMap,part + '_y_' + string(keyframe),0);
ds_map_add(animMap,part + '_spriteangle_' + string(keyframe),0);
ds_map_add(animMap,part + '_xscale_' + string(keyframe),1);
ds_map_add(animMap,part + '_yscale_' + string(keyframe),1);

part = 'weaponL'
ds_map_add(animMap,part + '_x_' + string(keyframe),0);
ds_map_add(animMap,part + '_y_' + string(keyframe),0);
ds_map_add(animMap,part + '_spriteangle_' + string(keyframe),0);
ds_map_add(animMap,part + '_xscale_' + string(keyframe),1);
ds_map_add(animMap,part + '_yscale_' + string(keyframe),1);

part = 'weaponR'
ds_map_add(animMap,part + '_x_' + string(keyframe),0);
ds_map_add(animMap,part + '_y_' + string(keyframe),0);
ds_map_add(animMap,part + '_spriteangle_' + string(keyframe),0);
ds_map_add(animMap,part + '_xscale_' + string(keyframe),1);
ds_map_add(animMap,part + '_yscale_' + string(keyframe),1);


part = 'armL'
ds_map_add(animMap,part + '_x_' + string(keyframe),0);
ds_map_add(animMap,part + '_y_' + string(keyframe),0);
ds_map_add(animMap,part + '_spriteangle_' + string(keyframe),0);
ds_map_add(animMap,part + '_xscale_' + string(keyframe),0.5);
ds_map_add(animMap,part + '_yscale_' + string(keyframe),1);

part = 'armR'
ds_map_add(animMap,part + '_x_' + string(keyframe),0);
ds_map_add(animMap,part + '_y_' + string(keyframe),0);
ds_map_add(animMap,part + '_spriteangle_' + string(keyframe),0);
ds_map_add(animMap,part + '_xscale_' + string(keyframe),0.5);
ds_map_add(animMap,part + '_yscale_' + string(keyframe),1);


part = 'head'
ds_map_add(animMap,part + '_x_' + string(keyframe),0);
ds_map_add(animMap,part + '_y_' + string(keyframe),0);
ds_map_add(animMap,part + '_spriteangle_' + string(keyframe),0);
ds_map_add(animMap,part + '_xscale_' + string(keyframe),1);
ds_map_add(animMap,part + '_yscale_' + string(keyframe),1);


part = 'hat'
ds_map_add(animMap,part + '_x_' + string(keyframe),0);
ds_map_add(animMap,part + '_y_' + string(keyframe),0);
ds_map_add(animMap,part + '_spriteangle_' + string(keyframe),0);
ds_map_add(animMap,part + '_xscale_' + string(keyframe),1);
ds_map_add(animMap,part + '_yscale_' + string(keyframe),1);


return animMap;

