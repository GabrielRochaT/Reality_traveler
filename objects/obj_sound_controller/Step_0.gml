var _actual_room = room_get_name(room)

if _actual_room == "rm_rl_principal" and init_sound{
	audio_stop_all()
	audio_play_sound(snd_laboratory, 4, true)
	init_sound = false
}

if _actual_room == "rm_plat_1" and init_sound{
	audio_stop_all()
	audio_play_sound(snd_plataform, 5, true)
	init_sound = false
}

if _actual_room == "rm_boss_battle" and init_sound{
	audio_stop_all()
	audio_play_sound(snd_boss, 7, true)
	init_sound = false
}




