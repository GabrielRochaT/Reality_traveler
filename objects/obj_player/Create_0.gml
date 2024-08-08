velh = 0
velv = 0
vel_jump = 9
dir = 0
veloc = 4
flr = 0
up = 0
down = 0
left = 0
right = 0
jump = 0
grv = .3
state = "idle"
life = 150

enemies_hit = ds_list_create()

#region ataque

check_atk = function(){
	if state != "morto"{
		if keyboard_check_pressed(ord("K")){
			if global.can_shot and global.bullets <= 0{
				if (alarm[1] == -1) {  // Se o alarme não estiver ativo, inicie o ataque
					alarm[1] = 60;
				}
			}
			show_debug_message("Ataquei")
			image_index = 0
			state = "atacando"
			state_switcher_plat()
			
		}
	}

}


#endregion

#region funçoes top down
controles_topdown = function(){
	up = keyboard_check(ord("W"))
	down = keyboard_check(ord("S"))
	left = keyboard_check(ord("A"))
	right = keyboard_check(ord("D"))
	
	dir = point_direction(0,0, right - left, down - up)
	
	
	if (left xor right or up xor down){
		velh = lengthdir_x(veloc, dir)
		velv = lengthdir_y(veloc, dir)
	}else{
		velh = 0
		velv = 0
	}
}

state_switcher_topdown = function(){
	switch(state){
		
		case "idle":
			sprite_index = spr_player_idle
			check_state_topdown()
			
		break
		
		case "idle_tras":
			sprite_index = spr_player_back_idle
			check_state_topdown()
			
		break
		
		case "idle_direita":
			sprite_index = spr_player_side_idle
			image_xscale = 1
			check_state_topdown()
			
		break
		
		case "idle_esquerda":
			sprite_index = spr_player_side_idle
			image_xscale = -1
			check_state_topdown()
			
		break
		
		case "movendo_frente":
			sprite_index = spr_player_run_front
			if !down{
				state = "idle"
			}
		break
		
		case "movendo_tras":
			sprite_index = spr_player_run_back
			if !up{
				state = "idle_tras"
			}
		break
		
		case "movendo_direita":
			sprite_index = spr_player_run_side
			image_xscale = 1
			if !right{
				state = "idle_direita"
			}
		break
		
		case "movendo_esquerda":
			sprite_index = spr_player_run_side
			image_xscale = -1
			if !left{
				state = "idle_esquerda"
			}
		break
	}
}

check_state_topdown = function(){
	
	if down{
		state = "movendo_frente"
	}else if up{
		state = "movendo_tras"
	}else if left{
		state = "movendo_esquerda"
	}else if right{
		state = "movendo_direita"
	}
}
#endregion

#region funções plataforma
controles_plat = function(){
	left = keyboard_check(ord("A"))
	right = keyboard_check(ord("D"))
	jump = keyboard_check_pressed(vk_space)
	
	flr = place_meeting(x, y+1, obj_blocker)
	
	velh = (right - left) * veloc
	velv += grv
	if flr{
		if jump{
			velv = -vel_jump
		}
	}else{
		velv += grv
		state = "pulando"
		sprite_index = spr_player_jump
	}
}


state_switcher_plat = function(){
	switch(state){
		
		case "idle":
			sprite_index = spr_player_side_idle
			//image_xscale = 1
			check_state_plat()
			
		break
		
		//case "idle_esquerda":
		//	sprite_index = spr_player_side_idle
		//	image_xscale = -1
		//	check_state_plat()
			
		//break
		
		case "movendo_direita":
			sprite_index = spr_player_run_side
			image_xscale = 1
			if !right{
				state = "idle"
			}
		break
		
		case "movendo_esquerda":
			sprite_index = spr_player_run_side
			image_xscale = -1
			if !left{
				state = "idle"
			}
		break
		
		case "pulando":
			if left{
				image_xscale = -1
			}
			if right{
				image_xscale = 1
			}
		
			if flr{
				state = "idle"
			}
		break
		
		case "atacando":

			sprite_index = spr_player_tiro
			if global.can_shot and global.bullets > 0{
				if (alarm[0] == -1) {  // Se o alarme não estiver ativo, inicie o ataque
					alarm[0] = 10;
				}
			}
			
			
			if keyboard_check_released(ord("K")) {
				state = "idle"
			}
		break
		
		case "atacado":
			sprite_index = spr_player_hit
			if image_index >= image_number -1 {
				state = "idle"
			}
		break
		
		case "morto":
			image_angle += 2
			room_restart()
		break
	
			
	}
	
}


check_state_plat = function(){
	if left{
		state = "movendo_esquerda"
	}else if right{
		state = "movendo_direita"
	}
}

#endregion