if global.can_shot{
	global.bullets = 15
	audio_play_sound(snd_get_item, 2, false)
	instance_destroy()
}