/// @description scr_FriendlyCheck()
/// @func scr_FriendlyCheck
if instance_exists(obj_friendlytarget)
	{
	if (obj_player.targeting = true)
		{
			global.ClickID = ClickID;
		}
		else 
		{
			obj_player.targeting = false;
			global.isTargeting = false;
		}
	}
	else 
	{
		instance_create_layer(x,y-20,"objlayer",obj_friendlytarget);
		//global.isTargeting = true;
	}