if !ValidateObject(obj_character){return -1;}

camera=noone; //camera instance associated with this character (if any)


control='player';
// none=no process controls this, auto= AI controls this, player= player controls this, cinematic= cinematic logic controls this


walk_speed=30; //maximum speed while walking. -todo, populate from handler
walk_smoothing=0.95;

character_index=0; //index to be grabbed from a stats list to populate values


anim_countdown=-1; //countdown of animation. a value of -1 means animation starts initiliased.

anim_variant=1; //number that indicates what variant of an animation should be used, to allow for different animations.


faction_id=1; //faction for the character. Characters in same faction cannot hurt or target each other.

character_id='debug_character'; //defines which character this is, e.g. luiza, spaniard musketeer..


rotation_smoothing=0.9;//movement smoothing variable;

hitpoints=1;

grace_period=0; //prevents a further check for melee damage within X seconds.

weapon_mode='gun'; //weapon mode variable to allow switching between melee and guns

instDoorHitBox= instance_create(x,y,obj_door_hitbox);



