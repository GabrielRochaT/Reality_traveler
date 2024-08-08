if global.initial_dialog_passed{
	if global.with_clock{
		audio_play_sound(snd_get_item, 4, false)
		instance_destroy()
	}
}
