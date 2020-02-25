var firearm_id=argument0;
var sounds =  string_toarray(get_firearm_genericstat(firearm_id,22));

var rand = random_range(0,array_length_1d(sounds)-1);

return sounds[rand];




