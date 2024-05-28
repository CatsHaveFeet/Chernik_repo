{
	depth = -9999;
	
	function create_item(_name, _desc, _spr) constructor
	{
		name = _name;
		description = _desc;
		sprite = _spr;
	}
	
	_c = c_white;
	
	global.item_list = 
	{
		stick : new create_item(
			"Stick",
			"An impressively average stick.",
			spr_wall
		),
		
		bottle : new create_item(
			"Empty bottle",
			"A bottle of already drunk liquid",
			spr_bottle
		)
	}
	
	inv = array_create(0);
	array_push(inv, global.item_list.stick);
	
	sep = 16;
	screen_border = 16;
}
