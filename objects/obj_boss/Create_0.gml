view_w = camera_get_view_width(view_camera[0])
view_h = camera_get_view_height(view_camera[0])
//display_set_gui_size(view_w, view_h)

life_max = 200
lifebar_w = 200
lifebar_h = 5

color1 = make_color_rgb(255, 0, 64)

life = 200
state = "idle"
timing = 25

function state_switcher() {
    switch(state) {
        case "idle":
            //sprite_index = spr_enemy01_idle;
            if (distance_to_object(obj_player) <= 400) {
                state = "atacando";
            }
            break;

        case "atacado":
            //sprite_index = spr_enemy01_hit;
            if (image_index >= image_number - 1) {
                state = "idle";
            }
            break;

        case "atacando":
            sprite_index = spr_enemy03_atack;
            if (alarm[0] == -1) {  // Se o alarme não estiver ativo, inicie o ataque
                alarm[0] = timing;
            }
			if (alarm[1] == -1) {  // Se o alarme não estiver ativo, inicie o ataque
                alarm[1] = 1000;
            }
			
			if distance_to_object(obj_player) > 400{
				state = "idle"
			}
            break;
    }
}