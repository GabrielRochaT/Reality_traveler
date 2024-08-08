var _amount = (life / life_max) * lifebar_w
var _x1 = view_w + 200
var _y1 = view_h - 210
var _x2 = _x1 + _amount
var _y2 = _y1 + lifebar_h

draw_set_color(c_purple)

draw_rectangle(_x1, _y1, _x2, _y2, false)
draw_set_color(-1)
