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
if (canTarget && !friendly)
{
	scr_EnemyCheck();
}
else
{
	instance_destroy(obj_target);
}
if (canTarget && friendly)
{
	scr_FriendlyCheck();
}
else
{
	instance_destroy(obj_friendlytarget);
}
#endregion