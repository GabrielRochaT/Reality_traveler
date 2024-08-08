if (life <= 0) {
	audio_play_sound(snd_enemy_death, 4, false)
    instance_destroy();
}

state_switcher()