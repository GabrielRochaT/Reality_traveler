/// @description Tentaculos
var _y_spawn = random_range(0, 255)
instance_create_layer(-32, _y_spawn, layer, obj_boss_tentacles)
show_debug_message(alarm[1])
alarm[1] = 1000;