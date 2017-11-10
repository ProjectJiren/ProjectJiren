/// @description scr_TargetSystem()
/// @function scr_TargetSystem
Click = mouse_check_button_pressed(mb_left);
ClickID = instance_position(mouse_x,mouse_y,all);

if (Click)
    {
    with (ClickID) 
        {
        global.target = name;
		obj_player.hastarget = true;
		obj_player.targeting = true;
        scr_TargetSystem();
        }
    }
    else
        {
		obj_player.targeting = false;
		if (obj_player.hastarget = false) instance_destroy(obj_friendlytarget);
        }
