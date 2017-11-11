/// @description scr_Movement()
/// @function scr_Movement

if keyboard_check(ord("A"))
    {
    x -= mspeed;
	wsadmoving = true;
    }
if keyboard_check(ord("S"))
    {
    y += mspeed;
	wsadmoving = true;
    }
if keyboard_check(ord("D"))
    {
    x += mspeed;
	wsadmoving = true;
    }
if keyboard_check(ord("W"))
    {
    y -= mspeed;
	wsadmoving = true;
    }
if (keyboard_check(vk_shift))
    {
    sprint = true;
	moving = true;
    if (sprint)
        {
        mspeed = playerSpeed + (playerSpeed / 1.5);
        }
    }
    else
        {
        sprint = false;
        if(!sprint)
            {
            mspeed = playerSpeed;
            }
        }
