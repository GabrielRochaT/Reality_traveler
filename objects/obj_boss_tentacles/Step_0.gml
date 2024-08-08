x += velh

if (place_meeting(x, y, obj_player) and can_hit){
    // Aplica dano ao jogador
    with (obj_player) {
        life -= 10;  
        state = "atacado";
    }
	can_hit = false
}

if (!place_meeting(x, y, obj_player)){
	can_hit = true
}

if !hitted{
	if life <= 0{
		if instance_exists(obj_boss){
			obj_boss.life -= 15
			hitted = true
		}

	}
}

if x >= 224 {
	velh = 0
	 if (alarm[0] == -1) {  // Se o alarme não estiver ativo, inicie o ataque
		alarm[0] = 60;
	 }
}

if x <= -69 {

	instance_destroy()
}