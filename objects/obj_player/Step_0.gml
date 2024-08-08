///var _topdown_room = room_get
var _actual_room = room_get_name(room)
if _actual_room == "rm_rl_principal"{
	global.on_plataformer = false
}

if !global.dialog{
	if !global.on_plataformer{
		controles_topdown()
		state_switcher_topdown()
	
	}else{
		if state != "morto"{
			controles_plat()
		}
		state_switcher_plat()
		if global.with_clock{
			check_atk()
		}
	}
	var _col = instance_place(x + velh, y, obj_blocker)
	
	if _col{
		if velh > 0{
			if global.on_plataformer{
				x = _col.bbox_left + (x - bbox_right)
			}
		}
		if velh < 0{
			if global.on_plataformer{
				x = _col.bbox_right+ (x - bbox_left)
			}
		}
		
		velh = 0
	
	}
	x += velh
	
	var _col = instance_place(x, y+velv, obj_blocker)
	if _col{
		if velv > 0{
			if global.on_plataformer{
				y = _col.bbox_top + (y - bbox_bottom)
			}
		}
		if velv < 0{
			if global.on_plataformer{
				y = _col.bbox_bottom + (y - bbox_top)
			}
		}
		
		velv = 0
	
	}
	y += velv
}

#region dialogo

if distance_to_object(obj_npcs_par) <= 10{
	if keyboard_check_pressed(ord("F")) and !global.dialog{
		var _npc = instance_nearest(x, y, obj_npcs_par)
		var _dialog = instance_create_layer(x, y, "Dialog", obj_dialog)
		_dialog.npc_name = _npc.name
		show_debug_message(_dialog.npc_name)
	}
}

#endregion

#region interação com relógio
if distance_to_object(obj_uni_clock) <= 10 and global.initial_dialog_passed{
	if !global.with_clock{
		if keyboard_check_pressed(ord("F")){
			global.with_clock = true
		}
	}
}
if global.with_clock{
	if _actual_room == "rm_rl_principal"{
		if keyboard_check_pressed(ord("J")){
			audio_play_sound(snd_teleport, 3, false)
			room_goto(rm_plat_1)
			global.on_plataformer = true
			global.clock_blocked = true
		}
		
	}
	if keyboard_check_pressed(ord("J")){
		if _actual_room == "rm_boss_battle" and !global.clock_blocked{
			room_goto(rm_rl_principal)
		}
	}
}

#endregion

#region interação com espada

if distance_to_object(obj_rune) <= 10 {
	if !global.can_shot{
		if keyboard_check_pressed(ord("F")){
			global.can_shot = true
		}
	}
}

#endregion

#region interação com chave e porta

if distance_to_object(obj_key) <= 10 {
	if !global.with_key{
		if keyboard_check_pressed(ord("F")){
			global.with_key = true
		}
	}
}

if distance_to_object(obj_castle) <= 10 {
	if global.with_key{
		if keyboard_check_pressed(ord("F")){
			room_goto(rm_boss_battle)
		}
	}
}

#endregion

#region interação com reator

if distance_to_object(obj_reator) <= 10 {
	if !global.with_reactor{
		if keyboard_check_pressed(ord("F")){
			global.with_reactor = true
			var _dialog = instance_create_layer(x, y, "Dialog", obj_dialog)
			_dialog.npc_name = obj_reator.name
			
		}
	}
}

#endregion

#region morte
if life <= 0{
	sprite_index = spr_player_dead
	state = "morto"
}

if instance_place(x, y, obj_killer){
	life = 0
}

if instance_place(x, y, obj_enemy01){
	state = "atacado"
}

#endregion

if global.endgame and !global.dialog{
	game_restart()
}