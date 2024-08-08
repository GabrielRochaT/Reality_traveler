if (life <= 0) {
	state = "idle"
	image_angle += 0.2
	image_alpha -= 0.1
	instance_create_layer(x, y-10, layer, obj_key)
	 if (alarm[4] == -1) {
		alarm[4] = 60
	 }
}

state_switcher()