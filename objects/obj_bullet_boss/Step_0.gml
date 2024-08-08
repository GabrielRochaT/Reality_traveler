if (place_meeting(x, y, obj_player)) {
    // Aplica dano ao jogador
    with (obj_player) {
        life -= 10;  // Substitua "5" pelo valor de dano desejado
        state = "atacado";
    }
    
    show_debug_message("dei dano");

    // Destruir a bala após a colisão
    instance_destroy();
}

if distance_to_object(obj_player) > 1000{
	instance_destroy()
}