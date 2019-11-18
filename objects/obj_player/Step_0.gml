// Update Input
inputLeft = keyboard_check(vk_left);
inputRight = keyboard_check(vk_right);
inputUp = keyboard_check(vk_up);
inputDown = keyboard_check(vk_down);
inputWalk = keyboard_check(vk_alt);
inputRun = keyboard_check(vk_shift);

// Alter Speed
if(inputWalk || inputRun)
{
	spd = abs((inputWalk * wSpd) - (inputRun * rSpd));
}
else
{
	spd = nSpd;
}
//show_debug_message(spd);
// Reset Move Variables
moveX = 0;
moveY = 0;

// Intended Movement
moveX = (inputRight - inputLeft) * spd;
if(moveX = 0)  // So we can't move diagonally
{
	moveY = (inputDown - inputUp) * spd;
}

// Collision Check
//  Horizontal
if(moveX != 0)
{
	if(place_meeting(x + moveX, y, obj_collision))
	{
		repeat(abs(moveX))
		{
			if(!place_meeting(x + sign(moveX), y, obj_collision))
			{
				x += sign(moveX);
			}
			else
			{
				break;
			}
		}
		moveX = 0;
	}
}
//  Vertical
if(moveY != 0)
{
	if(place_meeting(x, y + moveY, obj_collision))
	{
		repeat(abs(moveY))
		{
			if(!place_meeting(x, y + sign(moveY), obj_collision))
			{
				y += sign(moveY);
			}
			else
			{
				break;
			}
		}
		moveY = 0;
	}
}

// Objects
var inst = instance_place(x,y, obj_transition);
if(inst != noone)
{
	show_debug_message("Does not equal noone");
	with(game)
	{
		spawnRoom = inst.targetRoom;
		show_debug_message(spawnRoom);
		doTransition = true;
	}
}

// Apply Movement
x += moveX;
y += moveY;



