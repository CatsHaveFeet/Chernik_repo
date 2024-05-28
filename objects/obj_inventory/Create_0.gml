{
	depth = -9999;
	
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
