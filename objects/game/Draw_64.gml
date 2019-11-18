
if(doTransition)
{   // Handle black fade and room transition
	if(room != spawnRoom)
	{
		show_debug_message("Inside doTransition");
		blackAlpha += 0.1;
		show_debug_message("blackAlpha is equal to: ");
		show_debug_message(blackAlpha);
		if(blackAlpha >= 1)
		{
			show_debug_message("blackAlpha is 1 or greater");
			room_goto(spawnRoom);
		} else {
			blackAlpha -= 0.1;
			if(blackAlpha <= 0)
			{
				doTransition = false;
			}
		}
	}

	// Draw black fade
	draw_set_alpha(blackAlpha);
	draw_rectangle_color(0,0, guiWidth,guiHeight, c_black, c_black, c_black, c_black, false);
	draw_set_alpha(1);
}