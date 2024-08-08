if global.with_reactor{
	global.clock_blocked = false
	audio_play_sound(snd_get_item, 2, false)
	instance_destroy()
}