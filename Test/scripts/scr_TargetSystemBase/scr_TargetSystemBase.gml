/// @description scr_TargetSystem()
/// @function scr_TargetSystem
ClickID = instance_position(mouse_x,mouse_y,all);

if (mouse_check_button_pressed(mb_left))
    {
    with (ClickID) 
        {
        scr_TargetSystem();
        }
    }
