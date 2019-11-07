var animLength = 9;
var frameSize = 64;
var animSpeed = 12;

draw_sprite_part(spr_base_female_1, 0, floor(xFrame) * frameSize, yFrame, frameSize, frameSize, x, y);

// Increment Frame For Animation
if(xFrame < animLength - 1)
{
	xFrame += animSpeed / 60;
}
else
{
	xFrame = 0;
}