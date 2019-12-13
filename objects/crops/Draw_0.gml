if(planting)
{
	var cs = cellSize;
	var xx = mx div cs;
	var yy = my div cs;

	xx *= cs;  
	yy *= cs;

	var c = c_red;
	
	var lay_id = layer_get_id("T_Soil");
	var map_id = layer_tilemap_get_id(lay_id);
	var data = tilemap_get_at_pixel(map_id, mx,my);
	if(data != 0)
	{
		c = c_lime;
	}

	//Draw a rectangle red or green to show if you can plant there or not
	draw_rectangle_color(xx,yy, xx+cs,yy+cs, c,c,c,c, true);

	//Draw the crop to be planted at mouse cursor
	draw_sprite(spr_crops_picked, selectCrop, xx+(cs/2), yy+(cs/2));
}