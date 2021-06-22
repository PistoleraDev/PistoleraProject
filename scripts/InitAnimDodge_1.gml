var duration = argument0;
var loop= argument1;

var animMap = ds_map_create();

ds_map_add(animMap,'animName','InitAnimDodge_1');
ds_map_add(animMap,'duration',duration);
ds_map_add(animMap,'elapsed',0);
ds_map_add(animMap,'loop',loop);
ds_map_add(animMap,'end',false);

//format: [part]_[property]_[keyframe]
var keyframe = 0;
ds_map_add(animMap,'keyframe_'+string(keyframe),0.16);
keyframe+=1;
ds_map_add(animMap,'keyframe_'+string(keyframe),0.33);
keyframe+=1;
ds_map_add(animMap,'keyframe_'+string(keyframe),0.5);
keyframe+=1;
ds_map_add(animMap,'keyframe_'+string(keyframe),0.66);
keyframe+=1;
ds_map_add(animMap,'keyframe_'+string(keyframe),0.83);
keyframe+=1;
ds_map_add(animMap,'keyframe_'+string(keyframe),1);

keyframe = 0;
var part = 'body'
ds_map_add(animMap,part + '_spriteangle_' + string(keyframe),120);
keyframe+=1;
ds_map_add(animMap,part + '_spriteangle_' + string(keyframe),240);
keyframe+=1;
ds_map_add(animMap,part + '_spriteangle_' + string(keyframe),0);
keyframe+=1;
ds_map_add(animMap,part + '_spriteangle_' + string(keyframe),120);
keyframe+=1;
ds_map_add(animMap,part + '_spriteangle_' + string(keyframe),240);
keyframe+=1;
ds_map_add(animMap,part + '_spriteangle_' + string(keyframe),0);


keyframe = 0;
part = 'armL'
ds_map_add(animMap,part + '_spriteangle_' + string(keyframe),-30);
ds_map_add(animMap,part + '_xscale_' + string(keyframe),1);
keyframe+=1;
ds_map_add(animMap,part + '_spriteangle_' + string(keyframe),-60);
ds_map_add(animMap,part + '_xscale_' + string(keyframe),1);
keyframe+=1;
ds_map_add(animMap,part + '_spriteangle_' + string(keyframe),-50);
ds_map_add(animMap,part + '_xscale_' + string(keyframe),0.82);
keyframe+=1;
ds_map_add(animMap,part + '_spriteangle_' + string(keyframe),-40);
ds_map_add(animMap,part + '_xscale_' + string(keyframe),0.75);
keyframe+=1;
ds_map_add(animMap,part + '_spriteangle_' + string(keyframe),-30);
ds_map_add(animMap,part + '_xscale_' + string(keyframe),0.68);
keyframe+=1;
ds_map_add(animMap,part + '_spriteangle_' + string(keyframe),-20);
ds_map_add(animMap,part + '_xscale_' + string(keyframe),0.5);




keyframe = 0;
part = 'armR'
ds_map_add(animMap,part + '_spriteangle_' + string(keyframe),30);
ds_map_add(animMap,part + '_xscale_' + string(keyframe),1);
keyframe+=1;
ds_map_add(animMap,part + '_spriteangle_' + string(keyframe),60);
ds_map_add(animMap,part + '_xscale_' + string(keyframe),1);
keyframe+=1;
ds_map_add(animMap,part + '_spriteangle_' + string(keyframe),50);
ds_map_add(animMap,part + '_xscale_' + string(keyframe),0.82);
keyframe+=1;
ds_map_add(animMap,part + '_spriteangle_' + string(keyframe),40);
ds_map_add(animMap,part + '_xscale_' + string(keyframe),0.75);
keyframe+=1;
ds_map_add(animMap,part + '_spriteangle_' + string(keyframe),30);
ds_map_add(animMap,part + '_xscale_' + string(keyframe),0.68);
keyframe+=1;
ds_map_add(animMap,part + '_spriteangle_' + string(keyframe),20);
ds_map_add(animMap,part + '_xscale_' + string(keyframe),0.5);





return animMap;

