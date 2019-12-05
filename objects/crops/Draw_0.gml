if(planting)
{
	var cs = cellSize;
	var xx = mx div cs;
	var yy = my div cs;

	xx *= cs;  
	yy *= cs;

	//Draw the crop to be planted at mouse cursor
	draw_sprite(spr_crops_picked, selectCrop, xx+(cs/2), yy+(cs/2));
}