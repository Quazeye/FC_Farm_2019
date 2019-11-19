var animLength = 9;
var frameSize = 64;
var animSpeed = 12;

switch(facing)
{
	case dir.left:
		yFrame = 9 // figured out from the sprite sheet
		break;
	case dir.right:
		yFrame = 11
		break;
	case dir.up:
		yFrame = 8
		break;
	case dir.down:
		yFrame = 10;
		break;
	case -1:
		xFrame = 0; // idle
		break;
}

// Increment Frame For Animation
if(xFrame + (animSpeed / 60) < animLength)
{
	xFrame += animSpeed / 60;
}
else
{
	xFrame = 1;
}


var xx = x - xOffset;
var yy = y - yOffset;

// Draw Character Shadow
if(spr_shadow != -1)
{
	draw_sprite(spr_shadow, 0, x, y);
}
// Draw Character Base
if(spr_base != -1)
{
	draw_sprite_part(spr_base, 0, floor(xFrame) * frameSize, yFrame * frameSize, frameSize, frameSize, xx, yy);
}
// Draw Character Feet
if(spr_feet != -1)
{
	draw_sprite_part(spr_feet, 0, floor(xFrame) * frameSize, yFrame * frameSize, frameSize, frameSize, xx, yy);
}
// Draw Character Legs
if(spr_legs!= -1)
{
	draw_sprite_part(spr_legs, 0, floor(xFrame) * frameSize, yFrame * frameSize, frameSize, frameSize, xx, yy);
}
// Draw Character Shirt
if(spr_torso != -1)
{
	draw_sprite_part(spr_torso, 0, floor(xFrame) * frameSize, yFrame * frameSize, frameSize, frameSize, xx, yy);
}
// Draw Character Hair
if(spr_hair != -1)
{
	draw_sprite_part(spr_hair, 0, floor(xFrame) * frameSize, yFrame * frameSize, frameSize, frameSize, xx, yy);
}
