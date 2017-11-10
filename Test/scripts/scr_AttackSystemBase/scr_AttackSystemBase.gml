/// @description AttackSystemBase()
/// @function AttackSystemBase
Click = mouse_check_button_pressed(mb_right);
ClickID = instance_position(mouse_x,mouse_y,all);

if (Click)
    {
    with (ClickID)
        {
        if (name == global.target && !friendly)
            {
            r1 = x + y;
            r2 = obj_player.x + obj_player.y;
            range = r2 - r1;
            if (range >= -48 && range <= 48)
                {
                hit = true;
                    {
                    if(hit)
                        {
                        curHP -= obj_player.attack;
                        show_debug_message("You have attacked " + string(name) + " for " + string(obj_player.attack) +" damage." );
                        show_debug_message("Targets HP: " + string(curHP) + "/" + string(maxHP));
                        scr_HealthSystem();
                        }
                        else
                            {
                            hit = false;
                            scr_HealthSystem();
                            }
                    }
                }
                else
                    {
                    show_debug_message("Not within range.[" + string(range) + "]")
                    }
            }
            else
                {
                if (friendly)
                    {
                    show_debug_message("That target is friendly.");
                    }
                }
        }
    }
