/// @description scr_TargetSystem()
/// @function scr_TargetSystem
#region Old Target System
//if (name == global.target)
//    {
//    if(canTarget)
//        {
//        if (!friendly)
//            {
//            scr_EnemyCheck();
//            }
//			if (friendly)
//				{
//					scr_FriendlyCheck();
//				}

//				}
//		else instance_destroy(obj_friendlytarget); instance_destroy(obj_target);
//		instance_destroy(obj_target);
//    }
#endregion
#region New Target System
//var testID = global.target.id;
//if (canTarget && !friendly)
//	{
//	obj_player.targeting = true;
//	scr_EnemyCheck();
//	show_debug_message(obj_player.targeting);
//	}
//else
//	{
//	instance_destroy(obj_target);
//	obj_player.targeting = false;
//	}
//if (canTarget && friendly)
//	{
//	obj_player.targeting = true;
//	scr_FriendlyCheck();
//	}
//else
//	{
//	instance_destroy(obj_friendlytarget);
//	obj_player.targeting = false;
//	}
#endregion
#region Target System Test
if (canTarget && !friendly)
	{
	obj_player.targeting = true;
	scr_EnemyCheck();
	}
else
	{
	instance_destroy(obj_target);
	obj_player.targeting = false;
	if (canTarget && friendly)
		{
		obj_player.targeting = true;
		scr_FriendlyCheck();
		}
	else
		{
		instance_destroy(obj_friendlytarget);
		instance_destroy(obj_target);
		obj_player.targeting = false;
		}
	}
#endregion