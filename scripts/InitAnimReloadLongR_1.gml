var duration = argument0;
var loop= argument1;

var animMap = ds_map_create();

ds_map_add(animMap,'animName','InitAnimReloadLongR_1');
ds_map_add(animMap,'duration',duration);
ds_map_add(animMap,'elapsed',0);
ds_map_add(animMap,'loop',loop);
ds_map_add(animMap,'end',false);

//format: [part]_[property]_[keyframe]
var keyframe = 0;
ds_map_add(animMap,'keyframe_'+string(keyframe),0.1);

var part = 'body'
ds_map_add(animMap,part + '_spriteangle_' + string(keyframe),-25);


part = 'weaponL'
ds_map_add(animMap,part + '_visible_' + string(keyframe),false);

part = 'weaponR'
ds_map_add(animMap,part + '_visible_' + string(keyframe),false);
ds_map_add(animMap,part + '_spriteangle_' + string(keyframe),45);
ds_map_add(animMap,part + '_xscale_' + string(keyframe),0.5);
ds_map_add(animMap,part + '_yscale_' + string(keyframe),0.5);



part = 'armL'
ds_map_add(animMap,part + '_spriteangle_' + string(keyframe),-20);
ds_map_add(animMap,part + '_xscale_' + string(keyframe),0.3);
ds_map_add(animMap,part + '_yscale_' + string(keyframe),1);

part = 'armR'
ds_map_add(animMap,part + '_spriteangle_' + string(keyframe),90);

part = 'head'
ds_map_add(animMap,part + '_spriteangle_' + string(keyframe),0);

keyframe+=1;
ds_map_add(animMap,'keyframe_'+string(keyframe),0.5);

part = 'body'
ds_map_add(animMap,part + '_spriteangle_' + string(keyframe),0);

part = 'weaponR'
ds_map_add(animMap,part + '_visible_' + string(keyframe),true);
ds_map_add(animMap,part + '_spriteangle_' + string(keyframe),90);
ds_map_add(animMap,part + '_yfactor_' + string(keyframe),0.5);
ds_map_add(animMap,part + '_xscale_' + string(keyframe),1);
ds_map_add(animMap,part + '_yscale_' + string(keyframe),1);

part = 'armL'
ds_map_add(animMap,part + '_spriteangle_' + string(keyframe),0);
ds_map_add(animMap,part + '_xscale_' + string(keyframe),0.7);
ds_map_add(animMap,part + '_yscale_' + string(keyframe),1);

part = 'armR'
ds_map_add(animMap,part + '_spriteangle_' + string(keyframe),0);
ds_map_add(animMap,part + '_xscale_' + string(keyframe),0.6);
ds_map_add(animMap,part + '_yscale_' + string(keyframe),1);



keyframe+=1;
ds_map_add(animMap,'keyframe_'+string(keyframe),0.6);

part = 'body'
ds_map_add(animMap,part + '_spriteangle_' + string(keyframe),5);

part = 'weaponR'
ds_map_add(animMap,part + '_visible_' + string(keyframe),true);
ds_map_add(animMap,part + '_spriteangle_' + string(keyframe),90);
ds_map_add(animMap,part + '_yfactor_' + string(keyframe),0.5);
ds_map_add(animMap,part + '_xscale_' + string(keyframe),1);
ds_map_add(animMap,part + '_yscale_' + string(keyframe),1);

part = 'armL'
ds_map_add(animMap,part + '_spriteangle_' + string(keyframe),-45);
ds_map_add(animMap,part + '_xscale_' + string(keyframe),1);
ds_map_add(animMap,part + '_yscale_' + string(keyframe),1);

part = 'armR'
ds_map_add(animMap,part + '_spriteangle_' + string(keyframe),-10);
ds_map_add(animMap,part + '_xscale_' + string(keyframe),0.65);
ds_map_add(animMap,part + '_yscale_' + string(keyframe),1);


keyframe+=1;
ds_map_add(animMap,'keyframe_'+string(keyframe),0.99);

part = 'body'
ds_map_add(animMap,part + '_spriteangle_' + string(keyframe),-10);

part = 'weaponR'
ds_map_add(animMap,part + '_visible_' + string(keyframe),true);
ds_map_add(animMap,part + '_spriteangle_' + string(keyframe),45);
ds_map_add(animMap,part + '_y_' + string(keyframe),0);
ds_map_add(animMap,part + '_xscale_' + string(keyframe),0.5);
ds_map_add(animMap,part + '_yscale_' + string(keyframe),0.5);

part = 'armL'
ds_map_add(animMap,part + '_spriteangle_' + string(keyframe),-20);
ds_map_add(animMap,part + '_xscale_' + string(keyframe),0.3);
ds_map_add(animMap,part + '_yscale_' + string(keyframe),1);

part = 'armR'
ds_map_add(animMap,part + '_spriteangle_' + string(keyframe),90);
ds_map_add(animMap,part + '_xscale_' + string(keyframe),1);
ds_map_add(animMap,part + '_yscale_' + string(keyframe),1);


keyframe+=1;
ds_map_add(animMap,'keyframe_'+string(keyframe),1);

part = 'body'
ds_map_add(animMap,part + '_spriteangle_' + string(keyframe),0);

part = 'weaponR'
ds_map_add(animMap,part + '_visible_' + string(keyframe),false);
ds_map_add(animMap,part + '_spriteangle_' + string(keyframe),45);
ds_map_add(animMap,part + '_xscale_' + string(keyframe),0.01);
ds_map_add(animMap,part + '_yscale_' + string(keyframe),0.01);

part = 'armR'
ds_map_add(animMap,part + '_spriteangle_' + string(keyframe),90);
ds_map_add(animMap,part + '_xscale_' + string(keyframe),1);
ds_map_add(animMap,part + '_yscale_' + string(keyframe),1);


return animMap;

