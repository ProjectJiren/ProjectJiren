/// @description scr_ClickMovement()
/// @function scr_ClickMovement
//if (!moving && mouse_check_button(mb_left))
//{
//    if (point_distance(x, y, mouse_x, mouse_y) > 9)
//    {
//        mx = mouse_x;
//        my = mouse_y;
//        move_towards_point(mx, my, 4);
//    }
//}
//else if (global.isTargeting || moving || point_distance(x, y, mx, my) < 2)
//{
//    speed = 0;
//    moving = false;
//}
//if (point_distance(x, y, mx, my) > 2)
//{
//    draw_sprite(spr_clickedpoint, image_index, mx, my);
//}

var tget = global.isTargeting;

if (mouse_check_button(mb_left))
{
	show_debug_message("X: " + string(mouse_x));
	show_debug_message("Y: " + string(mouse_y));
	
    if (!global.isTargeting && point_distance(x, y, mouse_x, mouse_y) > 9)
    {
		moving = true;
        mx = mouse_x;
        my = mouse_y;
        move_towards_point(mx, my, 4);
    }
	//else if (moving && point_distance(x, y, obj_player.x, obj_player.y) < 2)
	//{
	//	moving = false;
	//	speed = 0;
	//}
	
	
	
	//moving = true;
    //if (point_distance(x, y, mouse_x, mouse_y) > 9)
    //{
    //    mx = mouse_x;
    //    my = mouse_y;
    //    move_towards_point(mx, my, 4);
	//	moving = false;
    //}
}
if (global.isTargeting && moving)
{
	speed = 0;
	moving = false;
}
else if (point_distance(mx, my, obj_player.x, obj_player.y) < 2)
{
	speed = 0;
	moving = false;
}