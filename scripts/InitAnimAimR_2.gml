var duration = argument0;
var loop= argument1;

var animMap = ds_map_create();

ds_map_add(animMap,'animName','InitAnimAimR_2');
ds_map_add(animMap,'duration',duration);
ds_map_add(animMap,'elapsed',0);
ds_map_add(animMap,'loop',loop);
ds_map_add(animMap,'end',false);

//format: [part]_[property]_[keyframe]
var keyframe = 0;
ds_map_add(animMap,'keyframe_'+string(keyframe),0.33);
keyframe+=1;
ds_map_add(animMap,'keyframe_'+string(keyframe),0.66);
keyframe+=1;
ds_map_add(animMap,'keyframe_'+string(keyframe),1);

keyframe = 0;
var part = 'body'
ds_map_add(animMap,part + '_spriteangle_' + string(keyframe),-141);
keyframe+=1;
ds_map_add(animMap,part + '_spriteangle_' + string(keyframe),-282);
keyframe+=1;
ds_map_add(animMap,part + '_spriteangle_' + string(keyframe),65);



keyframe = 0;
part = 'weaponR'
ds_map_add(animMap,part + '_visible_' + string(keyframe),false);
keyframe+=1;
ds_map_add(animMap,part + '_visible_' + string(keyframe),true);
keyframe+=1;
ds_map_add(animMap,part + '_visible_' + string(keyframe),true);





keyframe = 0;
part = 'armR'
ds_map_add(animMap,part + '_spriteangle_' + string(keyframe),90);
ds_map_add(animMap,part + '_xscale_' + string(keyframe),0.5);
keyframe+=1;
ds_map_add(animMap,part + '_spriteangle_' + string(keyframe),-90);
ds_map_add(animMap,part + '_xscale_' + string(keyframe),1);
keyframe+=1;
ds_map_add(animMap,part + '_spriteangle_' + string(keyframe),-65);
ds_map_add(animMap,part + '_xscale_' + string(keyframe),1);

keyframe = 0;
part = 'armL'
ds_map_add(animMap,part + '_spriteangle_' + string(keyframe),0);
ds_map_add(animMap,part + '_xscale_' + string(keyframe),0.5);



keyframe = 0;
part = 'head'
ds_map_add(animMap,part + '_spriteangle_' + string(keyframe),0);
keyframe+=1;
ds_map_add(animMap,part + '_spriteangle_' + string(keyframe),-30);
ds_map_add(animMap,part + '_xscale_' + string(keyframe),1);
keyframe+=1;
ds_map_add(animMap,part + '_spriteangle_' + string(keyframe),-65);
ds_map_add(animMap,part + '_xscale_' + string(keyframe),1);


return animMap;

