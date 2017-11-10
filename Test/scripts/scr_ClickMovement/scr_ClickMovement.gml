/// @description scr_ClickMovement()
/// @function scr_ClickMovement
if (!moving && mouse_check_button(mb_left))
    {
    if (point_distance(x, y, mouse_x, mouse_y) > 9)
        {
		mx = mouse_x;
		my = mouse_y;
        move_towards_point(mx, my, 4);
        }
    }
else if(obj_player.targeting || moving || point_distance(x, y, mx, my) < 2) speed = 0; moving = false;
if(point_distance(x, y, mx, my) > 2) draw_sprite(spr_clickedpoint, image_index, mx, my);