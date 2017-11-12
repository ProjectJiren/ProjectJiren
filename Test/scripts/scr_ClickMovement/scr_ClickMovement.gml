/// @description scr_ClickMovement()
/// @function scr_ClickMovement
var tget = global.isTargeting;

if (mouse_check_button(mb_left))
{
	show_debug_message("X: " + string(mouse_x));
	show_debug_message("Y: " + string(mouse_y));
	
    if (!global.isTargeting && point_distance(x, y, mouse_x, mouse_y) > 9)
    {
		//moving = true;
        mx = mouse_x;
        my = mouse_y;
		sprite_index = spr_playerMoving;
        move_towards_point(mx, my, 4);
    }
}
if (global.isTargeting && moving || wsadmoving)
{
	speed = 0;
	moving = false;
	wsadmoving = false;
	sprite_index = spr_player;
}
else if (point_distance(mx, my, obj_player.x, obj_player.y) < 2)
{
	speed = 0;
	moving = false;
	wsadmoving = false;
	sprite_index = spr_player;
}