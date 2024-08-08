life = 80;
state = "idle";
timing = 40;
vel = 4
velh = 0
can_damage = true

function state_switcher() {
    switch(state) {
        case "idle":
			
            sprite_index = spr_enemy_02_idle;
			speed = 0
            if (distance_to_object(obj_player) <= 500) {
                state = "atacando";
            }
            break;

        case "atacado":
            sprite_index = spr_enemy02_hit;
            if (image_index >= image_number - 1) {
                state = "idle";
            }
            break;

		case "atacando":
			speed = 4
			sprite_index = spr_enemy02_run;
			
			if x >= 1568 {
				image_xscale = 1
				var _dir = point_direction(x, y, 1216, y)
				direction = _dir
			
			}else if(x <= 1216){
				image_xscale = -1
				var _dir = point_direction(x, y, 1568, y)
				direction = _dir
			}
			
			if instance_place(x, y, obj_player) and can_damage{
				with(obj_player){
					life -= 15
				}
				can_damage = false
			}
			
			if !instance_place(x, y, obj_player){
				can_damage = true
			}
			
			if distance_to_object(obj_player) >= 500{
				state = "idle"
			}
		break;

    }
}