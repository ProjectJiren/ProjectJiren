/// @description scr_TargetSystem()
/// @function scr_TargetSystem
if (name == global.target)
    {
    if(canTarget)
        {
        if (!friendly)
            {
			scr_EnemyCheck();
            }
            else
                {
				scr_FriendlyCheck();
                }
        }
		else 
			{
			instance_destroy(obj_friendlytarget);
			instance_destroy(obj_target);
			}
    }



