/// @description scr_BaseVariables()
/// @function scr_BaseVariables
name = object_get_name(object_index) + "_" + string(id);
global.target = "";
mspeed = 0;
curHP = 0;
maxHP = 0;
attack = 0;
range = 0;
r1 = 0;
r2 = 0;
playerSpeed = 0;
sprint = false;
moving = false;
canTarget = false;
mx = 0;
my = 0;
global.ClickID = instance_position(mouse_x,mouse_y,all);
targeted = false;
global.isTargeting = false;
wsadmoving = false;