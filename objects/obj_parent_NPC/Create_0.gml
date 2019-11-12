wSpd = 1;
nSpd = 2;
rSpd = 3;

spd = wSpd;

xFrame = 1;  // first frame 0 is idle so we start at 1
yFrame = 8;

xOffset = sprite_get_xoffset(mask_index);
yOffset = sprite_get_yoffset(mask_index);

spr_shadow = spr_character_shadow;
spr_base = -1;
spr_torso = -1;
spr_legs = -1;
spr_feet = -1;
spr_hair = -1;

moveX = 0;
moveY = 0;

alarm[1] = 1;