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
#macro UP_MOVE (keyboard_check(vk_up) or keyboard_check(ord("W")))
#macro DOWN_MOVE (keyboard_check(vk_down) or keyboard_check(ord("S")))
#macro LEFT_MOVE (keyboard_check(vk_left) or keyboard_check(ord("A")))
#macro RIGHT_MOVE (keyboard_check(vk_right) or keyboard_check(ord("D")))
#macro SPRINT_INPUT keyboard_check(vk_shift)