/// @description scr_TargetSystem()
/// @function scr_TargetSystem
Click = mouse_check_button_pressed(mb_left);
ClickID = instance_position(mouse_x,mouse_y,all);

if (Click)
{
    with(ClickID)
    {
        obj_player.targeting = true;
        scr_TargetSystem();
    }
	if (instance_exists(obj_friendlytarget) || instance_exists(obj_target))
	{
		global.isTargeting = true;
	}
	else
	{
		global.isTargeting = false;	
	}
}