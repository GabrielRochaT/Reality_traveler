speed = 4;  // Velocidade do projétil
direction = point_direction(x, y, obj_player.x, obj_player.y);
image_angle = direction
audio_play_sound(snd_shot_enemy, 2, false)