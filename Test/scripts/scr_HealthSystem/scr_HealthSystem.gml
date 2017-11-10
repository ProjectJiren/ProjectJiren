/// @description scr_HealthSystem()
/// @function scr_HealthSystem
var healthBar;
healthBar = (curHP/maxHP) * 100;
if(canTarget && hit)
    {
    draw_healthbar(x-16, y+20, x+16, y+16, healthBar, c_black, c_red, c_lime, 0, true, true);
    }
    if (healthBar <= 0)
        {
        show_debug_message("You have killed " + string(name));
        instance_destroy(id, false);
        }
