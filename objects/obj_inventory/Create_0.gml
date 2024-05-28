{
	depth = -9999;
	
	function create_item(_name, _desc) constructor
	{
		name = _name;
		description = _desc;
	}
	
	_c = c_white;
	
	global.item_list = 
	{
		stick : 
			{
				name : "Stick",
				description : "An impressively average stick."
			}
	}
	
	inv = array_create(0);
	array_push(inv, global.item_list.stick);
	
	sep = 16;
	screen_border = 16;
}
