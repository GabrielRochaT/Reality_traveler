if !initialized{
	scr_texts()
	initialized = true

}

if mouse_check_button_pressed(mb_left){
	if d_page < array_length(text) - 1{
		d_page++
	}else{
		global.dialog = false
		global.initial_dialog_passed = true
		instance_destroy()
		
	}
}