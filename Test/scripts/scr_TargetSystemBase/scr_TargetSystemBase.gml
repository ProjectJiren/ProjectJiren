/// @description scr_TargetSystem()
/// @function scr_TargetSystem
Click = mouse_check_button_pressed(mb_left);
ClickID = instance_position(mouse_x,mouse_y,all);

if (Click)
    {
    with (ClickID) 
        {
        scr_TargetSystem();
        }
    }
