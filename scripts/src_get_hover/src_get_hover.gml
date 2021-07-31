function get_hover(){
	var m_X = device_mouse_x_to_gui(0);
	var m_Y = device_mouse_y_to_gui(0);
	
	return point_in_rectangle(m_X, m_Y, x, y, x + _width, y + _height);
}