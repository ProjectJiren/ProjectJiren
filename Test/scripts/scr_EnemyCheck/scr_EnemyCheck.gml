/// @description scr_EnemyCheck()
/// @func scr_EnemyCheck
if instance_exists(obj_target)
	{
	if (obj_player.targeting = true)
		{
		global.ClickID = ClickID;
		}
		else obj_player.targeting = false;
	}
	else instance_create_layer(x,y-20,"objlayer",obj_target);
	//omg look i did nothing!