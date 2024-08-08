if distance_to_object(obj_player) <= 1{
	audio_play_sound(snd_get_life, 2, false)
	with(obj_player){
		if life < 150{
			life += 25
		}
	}
	
	instance_destroy()
	
}