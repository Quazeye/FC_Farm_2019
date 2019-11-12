moveCam = keyboard_check(ord("C"));  // If C is pressed move the camera independantly

if(moveCam)
{
	// Use ADWS keys for moving the camera when C is pressed
	inputLeft = keyboard_check(ord("A"));
	inputRight = keyboard_check(ord("D"));
	inputUp = keyboard_check(ord("W"));
	inputDown = keyboard_check(ord("S"));
	
	x += (inputRight - inputLeft) * 6;  // Camera moves at speed of 6 (could be a variable)
	y += (inputDown - inputUp) * 6; // Camera moves at speed of 6 (could be a variable)
}
else // Following the player or other object with camera
{
	x = clamp(x, following.x - hBorder, following.x + hBorder); // Camera following with a bit of room to move without camera moving
	y = clamp(y, following.y - vBorder, following.y + vBorder); // Camera following with a bit of room to move without camera moving
}




