
sprite_index = item.sprite;

if (place_meeting(x, y, obj_player) and ACCEPT_INPUT) {
	item_add(item);
	instance_destroy();
}