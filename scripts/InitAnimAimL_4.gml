var duration = argument0;
var loop= argument1;

var animMap = ds_map_create();

ds_map_add(animMap,'animName','InitAnimAimL_4');
ds_map_add(animMap,'duration',duration);
ds_map_add(animMap,'elapsed',0);
ds_map_add(animMap,'loop',loop);
ds_map_add(animMap,'end',false);

//format: [part]_[property]_[keyframe]
var keyframe = 0;
ds_map_add(animMap,'keyframe_'+string(keyframe),0.2);

var part = 'body'
ds_map_add(animMap,part + '_x_' + string(keyframe),0);
ds_map_add(animMap,part + '_y_' + string(keyframe),0);
ds_map_add(animMap,part + '_spriteangle_' + string(keyframe),0);
ds_map_add(animMap,part + '_xscale_' + string(keyframe),1);
ds_map_add(animMap,part + '_yscale_' + string(keyframe),1);

part = 'weaponR'
ds_map_add(animMap,part + '_visible_' + string(keyframe),false);



part = 'armL'
ds_map_add(animMap,part + '_x_' + string(keyframe),0);
ds_map_add(animMap,part + '_y_' + string(keyframe),0);
ds_map_add(animMap,part + '_spriteangle_' + string(keyframe),90);
ds_map_add(animMap,part + '_xscale_' + string(keyframe),1);
ds_map_add(animMap,part + '_yscale_' + string(keyframe),1);

part = 'armR'

ds_map_add(animMap,part + '_spriteangle_' + string(keyframe),-50);
ds_map_add(animMap,part + '_xscale_' + string(keyframe),0.8);
ds_map_add(animMap,part + '_yscale_' + string(keyframe),1);

part = 'head'
ds_map_add(animMap,part + '_x_' + string(keyframe),0);
ds_map_add(animMap,part + '_y_' + string(keyframe),0);
ds_map_add(animMap,part + '_spriteangle_' + string(keyframe),0);
ds_map_add(animMap,part + '_xscale_' + string(keyframe),1);
ds_map_add(animMap,part + '_yscale_' + string(keyframe),1);

keyframe+=1;
ds_map_add(animMap,'keyframe_'+string(keyframe),1);

part = 'body'
ds_map_add(animMap,part + '_x_' + string(keyframe),0);
ds_map_add(animMap,part + '_y_' + string(keyframe),0);
ds_map_add(animMap,part + '_spriteangle_' + string(keyframe),-65);
ds_map_add(animMap,part + '_xscale_' + string(keyframe),1);
ds_map_add(animMap,part + '_yscale_' + string(keyframe),1);

part = 'weaponL'
ds_map_add(animMap,part + '_visible_' + string(keyframe),true);


part = 'armL'
ds_map_add(animMap,part + '_x_' + string(keyframe),0);
ds_map_add(animMap,part + '_y_' + string(keyframe),0);
ds_map_add(animMap,part + '_spriteangle_' + string(keyframe),65);
ds_map_add(animMap,part + '_xscale_' + string(keyframe),1);
ds_map_add(animMap,part + '_yscale_' + string(keyframe),1);

part = 'head'
ds_map_add(animMap,part + '_x_' + string(keyframe),0);
ds_map_add(animMap,part + '_y_' + string(keyframe),0);
ds_map_add(animMap,part + '_spriteangle_' + string(keyframe),65);
ds_map_add(animMap,part + '_xscale_' + string(keyframe),1);
ds_map_add(animMap,part + '_yscale_' + string(keyframe),1);


return animMap;

