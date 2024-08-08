var _guiw = display_get_gui_width()
var _guih = display_get_gui_height()

var _xx = 0
var _yy = _guih -200
var _c = c_black

draw_rectangle_color(_xx, _yy+50, _guiw, _guih, _c, _c, _c, _c, false)
draw_set_font(fnt_dialogs)
draw_text_ext(_xx + 32, _yy + 80, text[d_page], 32, _guiw -64)
draw_set_font(-1)