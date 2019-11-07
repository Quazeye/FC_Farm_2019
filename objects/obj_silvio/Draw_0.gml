var animLength = 9;
var frameSize = 64;
var animSpeed = 12;

if(moveX < 0)
{
	yFrame = 9 // figured out from the sprite sheet
}
else if(moveX > 0)
{
	yFrame = 11;
}
else if(moveY < 0)
{
	yFrame = 8;
}
else if(moveY > 0)
{
	yFrame = 10;
}
else
{
	xFrame = 0; // idle
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

// Draw Character Base
draw_sprite_part(spr_base, 0, floor(xFrame) * frameSize, yFrame * frameSize, frameSize, frameSize, xx, yy);

// Draw Character Feet
draw_sprite_part(spr_feet, 0, floor(xFrame) * frameSize, yFrame * frameSize, frameSize, frameSize, xx, yy);

// Draw Character Legs
draw_sprite_part(spr_legs, 0, floor(xFrame) * frameSize, yFrame * frameSize, frameSize, frameSize, xx, yy);

// Draw Character Shirt
draw_sprite_part(spr_torso, 0, floor(xFrame) * frameSize, yFrame * frameSize, frameSize, frameSize, xx, yy);

// Draw Character Hair
draw_sprite_part(spr_hair, 0, floor(xFrame) * frameSize, yFrame * frameSize, frameSize, frameSize, xx, yy);

draw_rectangle_color(bbox_left, bbox_top, bbox_right, bbox_bottom, c_yellow, c_yellow, c_yellow, c_yellow, true);