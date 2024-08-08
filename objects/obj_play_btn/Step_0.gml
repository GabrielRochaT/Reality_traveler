var _mouse_in = position_meeting(mouse_x, mouse_y, obj_play_btn)

if(_mouse_in){
	image_index = 0
	if mouse_check_button(mb_left){
		room_goto(rm_rl_principal)
	}
}else{
image_index = 1
}

