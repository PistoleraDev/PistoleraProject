var duration = argument0;
var loop= argument1;

var animMap = ds_map_create();

ds_map_add(animMap,'animName','InitAnimFireL_3');
ds_map_add(animMap,'duration',duration);
ds_map_add(animMap,'elapsed',0);
ds_map_add(animMap,'loop',loop);
ds_map_add(animMap,'end',false);

//format: [part]_[property]_[keyframe]
var keyframe = 0;
ds_map_add(animMap,'keyframe_'+string(keyframe),0.05);
keyframe+=1;
ds_map_add(animMap,'keyframe_'+string(keyframe),1);

keyframe = 0;
var part = 'body'
ds_map_add(animMap,part + '_spriteangle_' + string(keyframe),-60);
keyframe+=1;
ds_map_add(animMap,part + '_spriteangle_' + string(keyframe),-90);



keyframe = 0;
part = 'weaponL'
ds_map_add(animMap,part + '_spriteangle_' + string(keyframe),-20);
ds_map_add(animMap,part + '_xscale_' + string(keyframe),0.7);
ds_map_add(animMap,part + '_yscale_' + string(keyframe),1.3);
keyframe+=1;
ds_map_add(animMap,part + '_spriteangle_' + string(keyframe),0);
ds_map_add(animMap,part + '_xscale_' + string(keyframe),1);
ds_map_add(animMap,part + '_yscale_' + string(keyframe),1);




keyframe = 0;
part = 'armL'
ds_map_add(animMap,part + '_spriteangle_' + string(keyframe),40);
ds_map_add(animMap,part + '_xscale_' + string(keyframe),0.6);
keyframe+=1;
ds_map_add(animMap,part + '_spriteangle_' + string(keyframe),90);
ds_map_add(animMap,part + '_xscale_' + string(keyframe),1);


keyframe = 0;
part = 'head'
ds_map_add(animMap,part + '_spriteangle_' + string(keyframe),0);
keyframe+=1;
ds_map_add(animMap,part + '_spriteangle_' + string(keyframe),0);


return animMap;

