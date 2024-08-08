if (place_meeting(x, y, obj_enemy_par)) {
    
	audio_play_sound(snd_hit_enemy, 2, false)
    var _inst = instance_nearest(x, y, obj_enemy_par)
    _inst.life -= 5
	_inst.state = "atacado"
    instance_destroy();
}

if distance_to_object(obj_player) > 300{
	instance_destroy()
}
