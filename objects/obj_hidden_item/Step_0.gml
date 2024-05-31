{
	if (distance_to_object(obj_player) <= 10 and ACCEPT_INPUT and not instance_exists(obj_hidden_item_dialogue)) {
		instance_create_depth(x, y, -9999, obj_hidden_item_dialogue);
	}
}