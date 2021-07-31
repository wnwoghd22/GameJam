/// @description

_c = c_white;

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text_color(x + _width / 2, y + _height / 2 , _text, _c, _c, _c, _c, _hover ? 1 : 0.3);
draw_set_halign(fa_left);
draw_set_valign(fa_top);