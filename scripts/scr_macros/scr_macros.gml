#macro RIGHT 0
#macro UP 1
#macro LEFT 2
#macro DOWN 3
#macro STOP 4

#macro ACCEPT_INPUT (keyboard_check_pressed(vk_enter) or keyboard_check_pressed(ord("Z")))
#macro UP_INPUT keyboard_check_pressed(vk_up)
#macro DOWN_INPUT keyboard_check_pressed(vk_down)
#macro LEFT_INPUT keyboard_check_pressed(vk_left)
#macro RIGHT_INPUT keyboard_check_pressed(vk_right)
#macro SPRINT_INPUT keyboard_check_pressed(vk_shift)