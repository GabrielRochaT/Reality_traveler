life = 40;
state = "idle";
timing = 20;

function state_switcher() {
    switch(state) {
        case "idle":
            sprite_index = spr_enemy01_idle;
            if (distance_to_object(obj_player) <= 100) {
                state = "atacando";
            }
            break;

        case "atacado":
            sprite_index = spr_enemy01_hit;
            if (image_index >= image_number - 1) {
                state = "idle";
            }
            break;

        case "atacando":
            sprite_index = spr_enemy01_atack;
            if (alarm[0] == -1) {  // Se o alarme não estiver ativo, inicie o ataque
                alarm[0] = timing;
            }
			
			if distance_to_object(obj_player) > 100{
				state = "idle"
			}
            break;
    }
}