/// @description Projeteis

if (state == "atacando") {
    instance_create_layer(x - 10, y - 22, layer, obj_bullet_boss);
    show_debug_message("lancei o projetil");
    alarm[0] = timing;  // Reiniciar o alarme para continuar atacando
}