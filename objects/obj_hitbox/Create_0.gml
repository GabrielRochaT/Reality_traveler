colision_list = ds_list_create() //Lista de colisao
hitted_list = ds_list_create() //Lista de objetos que já levaram dano

var _coli = instance_place_list(x, y, obj_enemy_par, colision_list, false)

if _coli{
	for(var _i = 0; _i < ds_list_size(colision_list); _i++ ){
		var _target = colision_list[| _i]
		if !ds_list_find_value(hitted_list, _target){
			ds_list_add(hitted_list, _target)
			with(_target){
				life-= 10
				state = "atacado"
				show_debug_message(life)
			}
		
		}
	}
}