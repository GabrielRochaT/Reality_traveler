if (life <= 0) {
	state = "idle"
	
	image_angle += 0.2
	
	instance_create_layer(x, y-10, layer, obj_reator)
	 if (alarm[2] == -1) {
		alarm[2] = 60
	 }
}

state_switcher()