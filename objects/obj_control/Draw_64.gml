var _amount = (obj_player.life / life_max) * lifebar_w
var _x1 = view_w - 380
var _y1 = view_h - 210
var _x2 = _x1 + _amount
var _y2 = _y1 + lifebar_h

draw_set_color(color1)

draw_rectangle(_x1, _y1, _x2, _y2, false)
draw_set_color(c_white)
draw_text_ext(_x1, _y1 + 20, string(global.bullets)+"/15", 0, 100)
draw_set_color(-1)
