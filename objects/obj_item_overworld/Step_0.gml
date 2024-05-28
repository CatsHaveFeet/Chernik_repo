
sprite_index = item.sprite;

if (place_meeting(x, y, obj_player) and keyboard_check_pressed(vk_enter)) {
	item_add(item);
	instance_destroy();
}