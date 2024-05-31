{
	depth = -9999;
	
	function create_item(_name, _desc, _spr) constructor
	{
		name = _name;
		description = _desc;
		sprite = _spr;
	}
	
	function add_previous_sprite_heights(_i)
	{
		k = 0;
		for (i = 0; i < _i; i++) {
			k += sprite_get_height(inv[i].sprite);
		}
		return k;
	}
	
	_c = c_white;
	
	global.item_list = 
	{
		stick : new create_item(
			"Stick",
			"An impressively average stick.",
			spr_stick
		),
		
		bottle : new create_item(
			"Empty bottle",
			"A bottle of already drunk liquid",
			spr_bottle
		)
	}
	
	selected_item = -1;
	
	inv = array_create(0);
	array_push(inv, global.item_list.stick);
	
	sep = 6;
	screen_border = 16;
	
	menu_open = false;
}
