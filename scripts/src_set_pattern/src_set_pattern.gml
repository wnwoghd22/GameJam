function set_pattern(_instance, _pattern){
	_instance.fire_pattern = _pattern;
	switch(_pattern) {
	case pattern_bloom:
		_instance.matter_deg = 0;
		_instance.anti_deg = 0;
		break;
	default:
		break;
	}
}